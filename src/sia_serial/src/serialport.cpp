#include <data_record.h>


int open_serial()
{
    
    serial::Timeout to = serial::Timeout::simpleTimeout(20);
    //设置要打开的串口名称
    sp.setPort("/dev/ttyUSB0");
    //设置串口通信的波特率
    sp.setBaudrate(19200);
    
    sp.setParity(serial::parity_none);

    sp.setBytesize(serial::eightbits);

    sp.setStopbits(serial::stopbits_one);
    //串口设置timeout
    sp.setTimeout(to);
    

    try
    {
        //打开串口
        sp.open();
    }
    //catch(serial::IOExce+9ption& e)
    catch(serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port.");
        return -1;
    }
    
    //判断串口是否打开成功
    if(sp.isOpen())
    {
        ROS_INFO_STREAM("/dev/ttyUSB0 is opened.");
    }
    else
    {
        return -1;
    }
}

bool SD_msg(uint8_t* sd_msg, int n)
{
    if(flag_RX == 1)
    {
        ROS_INFO_STREAM("serial is receiving data");
        return false;
    }
    else
    {
        flag_SD = 1;   
        //jiao yan he
        unsigned short* pt = (unsigned short*) sd_msg;
        unsigned short checksum = pt[0];
        for(int i=1;i<10;i++)
        {
            checksum^=pt[i];
        }
        pt[10] = checksum;
        sp.write(sd_msg, n);
        flag_SD = 0;
        return true;
    }
}

void RX_msg(size_t n)
{
    unsigned char Data_temp[1024];
        flag_RX = 1;       
        if(n!=0)
        {
            //uint8_t buffer[1024];
            //校验并读出数据
            while((nread = sp.read(rx_buffer, n))>0)  //每次接受数据不一定全部接收，有可能由于发的慢，ubuntu接受数据较快，只接收了一部分数据，需要循环读取
            {
                //       printf("nread = %d\n", nread);
                for(unsigned char i = len_receive; i < (len_receive + nread); i++)
                {
                    Data_temp[i] = rx_buffer[i-len_receive];
                }
                len_receive+=nread;
                if( len_receive>=1024)
                {
                    printf("Data received overfow !\n");
                    len_receive=0;
                    continue;
                }
            }
            for (int i =0; i<len_receive; i++)   //从接受缓冲数组里面截取有用的数据
            {
                if((Data_temp[i]=='S')&&(Data_temp[i+23]=='\n')&&(len_receive>=n))   //24个字节解析完成之后再重新存数据
                {
                    memcpy(com0RecvBuf,&Data_temp[i],24);
                    Bit.com0Recved=1;       //接收到完整24个数据完成标志位
                    len_receive=0;               //重新从头存数据
                    printf("Receive 24 bytes OK!\n");
                }
                unsigned char *p;
                printf("\n");
                for(p=com0RecvBuf; p<(com0RecvBuf+24); p++)
                {
                    printf("%02x ",*p);
                }
                parse();
                printf("\n");
            }
            
        }
        flag_RX = 0;
}

unsigned char CheckRecvData()           //校验接收数据函数
{
    unsigned char check_h=0;    //校验和高位
    unsigned char check_l=0;    //校验和低位
    for (unsigned char i=0; i<20; i=i+2)check_l^=com0RecvBuf[i]; //校验和低位
    for (unsigned char i=1; i<20; i=i+2)check_h^=com0RecvBuf[i]; //校验和高位
    if((com0RecvBuf[22]=='\r')&&(com0RecvBuf[21]==check_h)&&(com0RecvBuf[20]==check_l))
    {
        //        printf("check receive OK!\n");
        return 1;
    }
    else
        //      printf("check receive error!\n");
        return 0;
    printf("CheckRecvData successfully!\n");
}

void parseCmd( )        //判断接收到一条完整的数据条
{
    unsigned char Checked_OK=0;
    RX_msg(24);
    if (Bit.com0Recved==1)
    {
        Checked_OK=CheckRecvData();
        if (Checked_OK==1)
        {
            uart0_receive_ok=1;       //收到正确格式的24个字节标志位

            if(com0RecvBuf[1]==0x00)   //反馈值是角度实际值，包含各种故障诊断信息
            {
                spos=(SPOS*)&(com0RecvBuf[0]); //(char *)&a:含义就是先取a的首地址,然后强制转换为char指针类型,最后的意思是把数组a转换成char型
                RX_dataRecord((MCMD*) (com0RecvBuf), j, '0', '5', '0');
                for(int i=0; i<7; i++)
                {
                    //cout << "feedback joint: " << spos->scmdPos[i] << endl;
                }
            }
        }
        else
        {
            Bit.com0Recved=0;    //若校验不成功，再次允许接收数据
            printf("check receive error!\n");
        }
    }

    //printf("ParseCmd successfully!\n");
}
/*
void parse()
{
    while (uart0_receive_ok==0) // waiting for uart receive ok, if ok(==1), jump out
    {
        printf("parse-------------\n");
        sleep(1);
        continue;
    }

    if(com0RecvBuf[1]==0x01)   //反馈值是角度设定值
    {
        memcpy(&sPos,com0RecvBuf,sizeof(SPOS));
        //      SPOS *spos=(SPOS*)&(com0RecvBuf[0]);//(char *)&a:含义就是先取a的首地址,然后强制转换为char指针类型,最后的意思是把数组a转换成char型
    }
    if(com0RecvBuf[1]==0x00)   //反馈值是角度实际值，包含各种故障诊断信息
    {
        spos=(SPOS*)&(com0RecvBuf[0]);//(char *)&a:含义就是先取a的首地址,然后强制转换为char指针类型,最后的意思是把数组a转换成char型
        RX_dataRecord((MCMD*) (com0RecvBuf), j, '0', '5', '0');                      //把接收到的数据存到文件里面
        
        //getCurrentJoint();
        

        //********************************
        unsigned char *p;
        for(p=com0RecvBuf; p<(com0RecvBuf+24); p++)
        {
            printf("%x ",*p);
        }
        printf("\n");
    }
    uart0_receive_ok=0;
    Bit.com0Recved=0; //若校验成功，需要解析完之后允许串口接收允许再次接收数据

}
*/
void parse()
{
    unsigned char Checked_OK=CheckRecvData();
    if (Checked_OK==1)
    {
        if(com0RecvBuf[1]==0x01)   //反馈值是角度设定值
        {
            memcpy(&sPos,com0RecvBuf,sizeof(SPOS));
            //      SPOS *spos=(SPOS*)&(com0RecvBuf[0]);//(char *)&a:含义就是先取a的首地址,然后强制转换为char指针类型,最后的意思是把数组a转换成char型
        }
        if(com0RecvBuf[1]==0x00)   //反馈值是角度实际值，包含各种故障诊断信息
        {
            spos=(SPOS*)&(com0RecvBuf[0]);//(char *)&a:含义就是先取a的首地址,然后强制转换为char指针类型,最后的意思是把数组a转换成char型
            RX_dataRecord((MCMD*) (com0RecvBuf), j, '0', '5', '0');                      //把接收到的数据存到文件里面
            
            //getCurrentJoint();
            //********************************
            /*
            unsigned char *p;
            
            for(p=com0RecvBuf; p<(com0RecvBuf+24); p++)
            {
                printf("%x ",*p);
            }
            */
            printf("\n");
        }
    }
    else
    {
        //Bit.com0Recved=0;    //若校验不成功，再次允许接收数据
        printf("check receive error!\n");
    }
    //uart0_receive_ok=0;
    //Bit.com0Recved=0; //若校验成功，需要解析完之后允许串口接收允许再次接收数据

}


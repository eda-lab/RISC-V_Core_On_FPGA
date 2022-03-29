

# 文件描述

> * * ###### *本工程基于开源 RISC-V 项目——USTCRVSoC *
>
>   * ###### ***GitHub链接 https://github.com/WangXuan95/USTC-RVSoC ***
>
>   
>
> * dll —— 包含运行工具链时可能需要的动态库文件
>* HDRVSoC-Intel —— 包含RISC-V Core（指令集架构为RV32I）的源码及Quartus工程文件（基于HX1006A和KX10CL055开发板），以及一些用于测试RISC-V Core的case
> * HDRVSoC-Xilinx——包含RISC-V Core（指令集架构为RV32I）的源码及Vivado工程文件（基于EGO-R035开发板——Artix7），以及一些用于测试RISC-V Core的case
>* HOST —— 包含一个同时支持.S汇编文件和.c文件的RISC-V上位机软件HDRVSoC Tool
> * NotModify_README_Pic——包含README.md所需的图片文件，用户请勿更改！！！
>
> 
>

# RISC-V Core特点（基于USTCRVSoC）

* **CPU**：5段流水线 RISC-V ，能运行 **RV32I** 指令集中的大部分指令

* **总线**：简单直观的，具有**握手机制**的，32-bit地址位宽和32-bit数据位宽的总线

* **总线仲裁**：可使用宏定义修改，以方便拓展外设、DMA、多核等

* **交互式 UART 调试**：支持使用PC上的Putty、串口助手、minicom等软件，实现**系统复位**、**下载程序**等功能

* **纯 RTL 实现**：使用SystemVerilog和Verilog联合编写，不调用IP核，便于移植和仿真

* **地址空间设置如下（以部署到HX1006A上的工程为例）：**

  ​		

  |  外设类型   |  起始地址  |  结束地址  |
  | :---------: | :--------: | :--------: |
  |   指令ROM   | 0x00000000 | 0x00000fff |
  |   指令RAM   | 0x00008000 | 0x00008fff |
  |   数据RAM   | 0x00010000 | 0x00010fff |
  |   显存RAM   | 0x00020000 | 0x00020fff |
  |  用户UART   | 0x00030000 | 0x00030003 |
  | 用户LED/DIG | 0x00031000 | 0x0003100f |

  

# HDRVSoC Tool介绍及使用说明

## 	· HDRVSoC Tool简介

​				◆ 可执行文件所在路径为：  ./HOST/HDRVSoCTool/HDRVSoCTool.exe

​		        ◆ HDRVSoC Tool由支持RV32I的工具链及针对本RISC-V Core的连接脚本link_itcm.lds（存放		

​					于./HOST/HDRVSoCTool/riscv32-elf-tools-windows文件夹中）、用于编译、下载及测试等操作的

​					上位机软件HDRVSoC.exe和TestFile三大部分构成

​				◆ HDRVSoC Tool可同时支持对.S汇编文件和C文件进行编译操作，编译过程中

​					的信息将打印在GUI下方的状态栏中，用户可根据工具链给出的信息进行错误

​					定位及代码修正



## 	· HDRVSoC Tool使用说明

#### 				[注] <u>以下操作均需在FPGA中已部署有RISC-V软核的情况下进行</u>

#### 					1、 双击打开HDRVSoC.exe

<img src=".\NotModify_README_Pic\HDRVSoC_Location.png" alt="HDRVSoC_Location" style="zoom:80%;" />



#### 					2、 点击“打开”按钮读取代码文件（.c或.S均可）

<img src=".\NotModify_README_Pic\Open.png" alt="Open" style="zoom:40%;" />



#### 					3、 点击“编译”按钮进行编译操作，生成指令流

<img src=".\NotModify_README_Pic\compile.png" alt="compile" style="zoom:40%;" />



#### 					4、 连接串口，点击“烧写”按钮进行下载操作

<img src=".\NotModify_README_Pic\download.png" alt="download" style="zoom:40%;" />



​			**-------特别说明：-------**

​						(1) 本上位机软件针对<u>具备一定GCC编译链接相关知识</u>的用户，提供了一个自定义编译选项的接口（对应上位机界面“<u>编译选项设置</u>”按钮），用户可通过该接口，自定义生成符合用户某些要求的bin文件。

​						(2) 本项目中为部署到Xilinx板卡提供的示例工程，是基于vivado2019.1版本创建的，故若用户的vivado版本低于2019.1，需重新创建工程并导入对应RTL文件；若用户vivado版本高于2019.1，可直接打开工程文件，并在tcl console中更新IP即可（更新IP的命令为**upgrade_ip[get_ips]**）。

​						(3) 本项目在./HOST/HDRVSoCTool/riscv32-elf-tools-windows中提供了一整套RISC-V工具链，其中某些工具（比如readelf.exe等）在本工程中并未用到，用户若对此感兴趣，可自行通过cmd手动调用这些命令工具。

​						(4) 若在使用HDRVSoC Tool对.S汇编文件进行编译过程中，出现"**<u>cannot find entry symbol main</u>**"的warning而导致编译出错，请将汇编文件中的**entry symbol(一般为_start)替换为main**即可。


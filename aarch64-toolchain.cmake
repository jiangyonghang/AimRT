# 1. 必选：设定目标系统名称
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

# 2. 必选：指定交叉编译器路径
# 即使你在终端可以直接输入 aarch64-linux-gnu-g++，
# 在工具链文件中建议写绝对路径或确保它们在 PATH 中
set(CMAKE_C_COMPILER /usr/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/aarch64-linux-gnu-g++)

# 3. 可选：指定目标平台的根文件系统 (Sysroot)
# 如果你只是编译简单的程序，可以不写。
# 如果需要链接目标平台特有的库（如 OpenSSL, OpenCV），则需要指向对应的目录
# set(CMAKE_SYSROOT /path/to/your/arm64/sysroot)

# 4. 必选：配置搜索模式
# 确保 CMAKE 只在目标 Sysroot 中寻找库和头文件，而不在宿主机(X86)中寻找
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

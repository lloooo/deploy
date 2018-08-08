# 发布工具

# 用法

1. 在projects 目录下以项目名字新建目录:
    ```
    cd projects
    mkdir deploy
    ```

2. 新建文件 hosts 和 projectname-vars.yml

    hosts: 内含要发布的主机列表
    ```
    [dev]
        ip1
        ip2
        ...

    [test]
        ip1
        ip2
        ...
    ```
    可以管理多组不同环境的主机列表。 dev 和test 为每组的主机名


   projectname-vars.yml 为项目的一些不轻易改动的信息，例如git 仓库地址,
   项目部署到的位置, 目前只需要填写几个变量：
   ```
   project_name: "deploy"
   deploy_to: "/home/wwwroot"
   git_repo: "git@github.com:lloooo/deploy.git"
   ```
   可选项
   ```
   after_cmd : "/home/wwwroot/<you-project>/setup.sh"
   ```
   * after_cmd  在安装后执行的shell 脚本

3. 使用方法

 ```
 rocket_pub.sh --prj deploy --tag 0.0.1 --host dev

 ```

    通过extra-var 传递每次发布可能需要变化的参数。传递与vars.yml 同名的变量，会覆盖vars.yml 里面的变量。

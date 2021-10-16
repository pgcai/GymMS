# Gym management system based on SSM

> The project was made in 2020-05-05~2020-05-10
>
> 谨以此片博文记录下我的第一个Java小Demo



## 项目展示

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223056729-1025028746.png)


> **用户登录页**


![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223105878-2066053629.png)


> **用户注册页**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223115078-1710400359.png)


> **用户主页**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223123422-8795051.png)


> **用户购买健身卡**(商城)**页**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223132037-664136393.png)


> **管理员登录页**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223138826-2034480811.png)


> **管理员主页**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223149527-465864464.png)


>**管理员添加用户页**


![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223242033-123391326.png)


>**管理员编辑用户页**


![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223251566-250540578.png)


>**细节1：常驻工具栏（内含搜索栏）**



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223259006-331494198.png)


>**细节2：登录账号密码实时反馈（AJAX）**


![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223308617-203187542.png)


>**细节3：翻页功能&可选每页显示条数 **



![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223313817-1851190412.png)


>**细节4：人性化的交互设计**



## 项目环境

- JDK: 1.8

- IDE: IDEA 201903

- DataBase: MySQL 8.0

- Mybatis: 3.5.2

- POM: Maven

- Tomcat 9
- Bootstrap 3
- JQuery 2
- lombok 插件

- 分页插件: PageHelper 5.1.11
- 涉及技术 MySQL数据库，Spring，JavaWeb及MyBatis，简单的前端知识

## 项目详情

### 设计数据库

> 大二没有好好学系统设计与分析，画的图一塌糊涂。

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223327088-1597991601.png)


> 包含两个实体类，用户&管理员
>
> 生成该数据库的sql文件 在该链接跳转GitHub /sql 目录下


![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223339885-123568355.png)


> 生成表如图示

### 设计要实现的功能

> 应该叫做用例图吧，但我的好多符号都是错的，再次后悔没有好好学习！

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223346220-866693620.png)


### 制作前端页面Demo

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223352024-1606258504.png)


> 设计该图的[网址](www.processon.com)

其实这一步放在后面也合适，我为了让自己吃大饼，就先设计了一下。

### 环境配置

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223407489-1370411315.png)


> 项目文件结构如图所示

#### 基本步骤

1. 新建Maven项目，添加web支持

2. 导入pom依赖

   ```xml
   <dependencies>
      <!--Junit-->
      <dependency>
          <groupId>junit</groupId>
          <artifactId>junit</artifactId>
          <version>4.12</version>
      </dependency>
      <!--数据库驱动-->
      <dependency>
          <groupId>mysql</groupId>
          <artifactId>mysql-connector-java</artifactId>
          <version>5.1.47</version>
      </dependency>
      <!-- 数据库连接池 -->
      <dependency>
          <groupId>com.mchange</groupId>
          <artifactId>c3p0</artifactId>
          <version>0.9.5.2</version>
      </dependency>
   
      <!--Servlet - JSP -->
      <dependency>
          <groupId>javax.servlet</groupId>
          <artifactId>servlet-api</artifactId>
          <version>2.5</version>
      </dependency>
      <dependency>
          <groupId>javax.servlet.jsp</groupId>
          <artifactId>jsp-api</artifactId>
          <version>2.2</version>
      </dependency>
      <dependency>
          <groupId>javax.servlet</groupId>
          <artifactId>jstl</artifactId>
          <version>1.2</version>
      </dependency>
   
      <!--Mybatis-->
      <dependency>
          <groupId>org.mybatis</groupId>
          <artifactId>mybatis</artifactId>
          <version>3.5.2</version>
      </dependency>
      <dependency>
          <groupId>org.mybatis</groupId>
          <artifactId>mybatis-spring</artifactId>
          <version>2.0.2</version>
      </dependency>
   
      <!--Spring-->
      <dependency>
          <groupId>org.springframework</groupId>
          <artifactId>spring-webmvc</artifactId>
          <version>5.1.9.RELEASE</version>
      </dependency>
      <dependency>
          <groupId>org.springframework</groupId>
          <artifactId>spring-jdbc</artifactId>
          <version>5.1.9.RELEASE</version>
      </dependency>
   </dependencies>
   ```

3. Maven资源过滤

   ```xml
   <build>
      <resources>
          <resource>
              <directory>src/main/java</directory>
              <includes>
                  <include>**/*.properties</include>
                  <include>**/*.xml</include>
              </includes>
              <filtering>false</filtering>
          </resource>
          <resource>
              <directory>src/main/resources</directory>
              <includes>
                  <include>**/*.properties</include>
                  <include>**/*.xml</include>
              </includes>
              <filtering>false</filtering>
          </resource>
      </resources>
   </build>
   ```

4. 建立基本结构框架 （如上所示[点此跳转](# 环境配置)

5. 建立基本配置

   - mybatis-config.xml

     ```xml
     <?xml version="1.0" encoding="UTF-8" ?>
     <!DOCTYPE configuration
            PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
            "http://mybatis.org/dtd/mybatis-3-config.dtd">
     <configuration>
     
     </configuration>
     ```

   - applicationContext.xml

     ```xml
     <?xml version="1.0" encoding="UTF-8"?>
     <beans xmlns="http://www.springframework.org/schema/beans"
           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://www.springframework.org/schema/beans
            http://www.springframework.org/schema/beans/spring-beans.xsd">
     
     </beans>
     ```

6. Mybatis层编写

   - 数据库配置文件 **database.properties**

     ```properties
     jdbc.driver=com.mysql.jdbc.Driver
     jdbc.url=jdbc:mysql://localhost:3306/ssmbuild?useSSL=true&useUnicode=true&characterEncoding=utf8
     jdbc.username=root
     jdbc.password=123456IDEA关联数据库
     ```

   - IDEA关联数据库

   - 编写MyBatis的核心配置文件

     ```xml
     <?xml version="1.0" encoding="UTF-8" ?>
     <!DOCTYPE configuration
            PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
            "http://mybatis.org/dtd/mybatis-3-config.dtd">
     <configuration>
        
        <typeAliases>
            <package name="com.kuang.pojo"/>
        </typeAliases>
        <mappers>
            <mapper resource="com/kuang/dao/BookMapper.xml"/>
        </mappers>
     
     </configuration>
     ```

### POJO Mapper Services的编写

#### POJO

1. User

   ```java
   @Data  //使用lombok插件即可省写get set
   @AllArgsConstructor
   @NoArgsConstructor
   public class User {
       private int id;
       private String username;
       private String password;
       private String name;
       private String sex;
       private String telephone;
       private int age;
       private String begintime;
       private String endtime;
       private int remainday;
       private int addday;
   
       public static void main(String[] args) {
           User u = new User();
           u.getTelephone();
       }
   }
   ```

2. Admin

   ```java
   @Data
   @NoArgsConstructor
   @AllArgsConstructor
   public class Admin {
       private int id;
       private String username;
       private String password;
       private String name;
       private String telephone;
   }
   ```

#### Mapper

1. 编写DAO层的Mapper接口

   1. 1 userMapper

   ```java
   public interface UserMapper {
       //通过id查询
       User queryUserById(int id);
   //    查询到期时间
       Date queryDateById(int id);
       //修改账号密码
       int updateNP(User user);
       //login
       User userLogin(User user);
       //会员注册
       int userRegister(User user);
   }
   ```

   1. 2 adminMapper 

      ```java
      @Mapper
      @Component
      public interface AdminMapper{
          //查询会员
          List<User> queryUser();
          //新增会员
          int addUser(User user);
          //删除会员
          int deleteUserById(int id);
          //更新会员
          int updateUser(User user);
          //根据id查询一个会员
          User queryUserById(int id);
          //根据姓名查询一个会员
          User queryUserByName(String name);
          //login
          Admin adminLogin(Admin admin);
          //查询用户总数
          int selectTotal();
          //    分页
          @Select("select * from gymms.user")
          @Results({
                  // 用户信息，只要指定id列与属性的映射关系，其他列会自动封装（属性与列一致）
                  @Result(property = "id", column = "id"),
                  // 信息
                  @Result(property = "id", column = "id"),
                  @Result(property = "username", column = "username"),
                  @Result(property = "password", column = "password"),
                  @Result(property = "name", column = "name"),
                  @Result(property = "sex", column = "sex"),
                  @Result(property = "telephone", column = "telephone"),
                  @Result(property = "age", column = "age"),
                  @Result(property = "begintime", column = "begintime"),
                  @Result(property = "endtime", column = "endtime"),
                  @Result(property = "remainday", column = "remainday")
          })
          List<User> findAll();
      }
      ```

2. 编写接口对应的 Mapper.xml 文件

   2. 1 userMapper.xml

   ```xml
   <?xml version="1.0" encoding="UTF-8" ?>
   <!DOCTYPE mapper
           PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
           "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
   
   <mapper namespace="com.cc.dao.UserMapper">
       <select id="queryDate" resultType="User">
           select remainday from gymms.user
         where id = #{id}
       </select>
   <!--    查询用户-->
       <select id="queryUserById" resultType="User">
           select * from gymms.user
         where id = #{id}
       </select>
       <!--更新User-->
       <update id="updateUser" parameterType="User">
         update gymms.user
         set username = #{username},password = #{password}
         where id = #{id}
      </update>
       <!--根据账号密码查询,返回一个User-->
       <select id="userLogin" resultType="User">
           select * from gymms.user
         where username = #{username} and password = #{password}
       </select>
   <!--    会员注册-->
       <!--增加一个会员-->
       <insert id="userRegister" parameterType="User">
         insert into gymms.user(username,password,name,sex,telephone,age,begintime,endtime,remainday)
         values (#{username},#{password},#{name},#{sex},#{telephone},#{age},#{begintime},#{endtime},#{remainday})
      </insert>
   </mapper>
   ```

   

   2. 2 adminMapper.xml

   ```xml
   <?xml version="1.0" encoding="UTF-8" ?>
   <!DOCTYPE mapper
           PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
           "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
   <mapper namespace="com.cc.dao.AdminMapper">
       <!--增加一个会员-->
       <insert id="addUser" parameterType="User">
         insert into gymms.user(username,password,name,sex,telephone,age,begintime,endtime,remainday)
         values (#{username},#{password},#{name},#{sex},#{telephone},#{age},#{begintime},#{endtime},#{remainday})
      </insert>
       <!--根据id删除一个User-->
       <delete id="deleteUserById" parameterType="int">
         delete from gymms.user where id=#{id}
      </delete>
       <!--更新User-->
       <update id="updateUser" parameterType="User">
         update gymms.user
         set username = #{username},password = #{password},name = #{name},sex = #{sex},telephone = #{telephone},
         age = #{age},endtime = #{endtime},remainday = #{remainday}
         where id = #{id}
      </update>
       <!--根据id查询,返回一个User-->
       <select id="queryUserById" resultType="User">
         select * from gymms.user
         where id = #{id}
      </select>
       <!--根据姓名查询,返回一个User-->
       <select id="queryUserByName" resultType="User">
         select * from gymms.user
         where name = #{name}
      </select>
       <!--查询全部Book-->
       <select id="queryUser" resultType="User">
         SELECT * from gymms.user
      </select>
       <!--根据账号密码查询,返回一个Admin-->
       <select id="adminLogin" resultType="Admin">
           select * from gymms.admin
         where username = #{username} and password = #{password}
       </select>
       <select id="selectTotal" resultType="int">
           select count(*) from gymms.user
       </select>
   </mapper>
   ```

   

3. 编写Service层的接口和实现类

   3. 1 userService

   ```java
   public interface UserService {
       //    查询到期时间
       Date queryDateById(int id);
       //修改账号密码
       int updateNP(User user);
       //login
       User userLogin(User user);
       //通过id查询
       User queryUserById(int id);
       //会员注册
       int userRegister(User user);
   }
   ```

   3. 2 adminService

   ```java
   public interface AdminService {
       //查询会员
       List<User> queryUser();
       //新增会员
       int addUser(User user);
       //删除会员
       int deleteUserById(int id);
       //更新会员
       int updateUser(User user);
       //根据id查询一个会员
       User queryUserById(int id);
       //根据姓名查询一个会员
       User queryUserByName(String name);
       //login
       Admin adminLogin(Admin admin);
       //查询用户总数
       int selectTotal();
       //    分页
       List<User> findAll();
   
       /**
        * 分页查询
        * @param pageNum  当然页
        * @param pageSize 页大小
        * @return 返回PageHelper提供的封装分页参数的PageInfo对象
        */
       PageInfo<User> findByPage(int pageNum, int pageSize);
   }
   ```

   3. 3 userServiceImpl

   ```java
   public class UserServiceImpl implements UserService {
       private UserMapper userMapper;
       public void setUserMapper(UserMapper userMapper) {
           this.userMapper = userMapper;
       }
       public Date queryDateById(int id) {
           return userMapper.queryDateById(id);
       }
       public int updateNP(User user) {
           return userMapper.updateNP(user);
       }
       public User userLogin(User user) {
           return userMapper.userLogin(user);
       }
       public User queryUserById(int id) {
           return userMapper.queryUserById(id);
       }
       public int userRegister(User user) {
           return userMapper.userRegister(user);
       }
   }
   ```

   3. 4 adminServiceImpl

   ```java
   public class AdminServiceImpl implements AdminService {
       private AdminMapper adminMapper;
       public void setAdminMapper(AdminMapper adminMapper) {
           this.adminMapper = adminMapper;
       }
       public List<User> queryUser() {
           return adminMapper.queryUser();
       }
       public int addUser(User user) {
           return adminMapper.addUser(user);
       }
       public int deleteUserById(int id) {
           return adminMapper.deleteUserById(id);
       }
       public int updateUser(User user) {
           return adminMapper.updateUser(user);
       }
       public User queryUserById(int id) { 
           return adminMapper.queryUserById(id); 
       }
       public User queryUserByName(String name) { 
           return adminMapper.queryUserByName(name); 
       }
       public Admin adminLogin(Admin admin) {
           return adminMapper.adminLogin(admin);
       }
       public int selectTotal() {
           return adminMapper.selectTotal();
       }
       public List<User> findAll() {
           return adminMapper.findAll();
       }
       public PageInfo<User> findByPage(int pageNum, int pageSize) {
           PageHelper.startPage(pageNum, pageSize);
           List<User> list = adminMapper.findAll();
           PageInfo<User> pageInfo = new PageInfo<>(list);
           return pageInfo;
       }
   }
   ```



#### Spring层

- 配置**Spring整合MyBatis**，我们这里数据源使用c3p0连接池；

- 编写Spring整合Mybatis的相关的配置文件；

  spring-dao.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd
       http://www.springframework.org/schema/context
       https://www.springframework.org/schema/context/spring-context.xsd">

    <!-- 配置整合mybatis -->
    <!-- 1.关联数据库文件 -->
    <context:property-placeholder location="classpath:database.properties"/>

    <!-- 2.数据库连接池 -->
    <!--数据库连接池
        dbcp 半自动化操作 不能自动连接
        c3p0 自动化操作（自动的加载配置文件 并且设置到对象里面）
    -->
    <bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource">
        <!-- 配置连接池属性 -->
        <property name="driverClass" value="${jdbc.driver}"/>
        <property name="jdbcUrl" value="${jdbc.url}"/>
        <property name="user" value="${jdbc.username}"/>
        <property name="password" value="${jdbc.password}"/>

        <!-- c3p0连接池的私有属性 -->
        <property name="maxPoolSize" value="30"/>
        <property name="minPoolSize" value="10"/>
        <!-- 关闭连接后不自动commit -->
        <property name="autoCommitOnClose" value="false"/>
        <!-- 获取连接超时时间 -->
        <property name="checkoutTimeout" value="10000"/>
        <!-- 当获取连接失败重试次数 -->
        <property name="acquireRetryAttempts" value="2"/>
    </bean>

    <!-- 3.配置SqlSessionFactory对象 -->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <!-- 注入数据库连接池 -->
        <property name="dataSource" ref="dataSource"/>
        <!-- 配置MyBaties全局配置文件:mybatis-config.xml -->
        <property name="configLocation" value="classpath:mybatis-config.xml"/>
    </bean>

    <!-- 4.配置扫描Dao接口包，动态实现Dao接口注入到spring容器中 -->
    <!--解释 ：https://www.cnblogs.com/jpfss/p/7799806.html-->
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <!-- 注入sqlSessionFactory -->
        <property name="sqlSessionFactoryBeanName" value="sqlSessionFactory"/>
        <!-- 给出需要扫描Dao接口包 -->
        <property name="basePackage" value="com.cc.dao"/>
    </bean>
</beans>
```

- **Spring整合service层**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
   http://www.springframework.org/schema/beans/spring-beans.xsd
   http://www.springframework.org/schema/context
   http://www.springframework.org/schema/context/spring-context.xsd">
    <!-- 扫描service相关的bean -->
    <context:component-scan base-package="com.cc.service" />
    <!--AdminServiceImpl注入到IOC容器中-->
    <bean id="AdminServiceImpl" class="com.cc.service.AdminServiceImpl">
        <property name="adminMapper" ref="adminMapper"/>
    </bean>
    <!--UserServiceImpl注入到IOC容器中-->
    <bean id="UserServiceImpl" class="com.cc.service.UserServiceImpl">
        <property name="userMapper" ref="userMapper"/>
    </bean>
    <!-- 配置事务管理器 -->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <!-- 注入数据库连接池 -->
        <property name="dataSource" ref="dataSource" />
    </bean>
</beans>
```



#### SpringMVC层

- **web.xml**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <!--DispatcherServlet-->
    <servlet>
        <servlet-name>DispatcherServlet</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <!--一定要注意:我们这里加载的是总的配置文件，之前被这里坑了！-->
            <param-value>classpath:applicationContext.xml</param-value>
        </init-param>
        <load-on-startup>1</load-on-startup>
    </servlet>
    <servlet-mapping>
        <servlet-name>DispatcherServlet</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>

    <!--encodingFilter-->
    <filter>
        <filter-name>encodingFilter</filter-name>
        <filter-class>
            org.springframework.web.filter.CharacterEncodingFilter
        </filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>utf-8</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>encodingFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

    <!--Session过期时间-->
    <session-config>
        <session-timeout>15</session-timeout>
    </session-config>
</web-app>
```



- **spring-mvc.xml**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:mvc="http://www.springframework.org/schema/mvc"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
   http://www.springframework.org/schema/beans/spring-beans.xsd
   http://www.springframework.org/schema/context
   http://www.springframework.org/schema/context/spring-context.xsd
   http://www.springframework.org/schema/mvc
   https://www.springframework.org/schema/mvc/spring-mvc.xsd">
    <!-- 配置SpringMVC -->
    <!-- 1.开启SpringMVC注解驱动 -->
    <mvc:annotation-driven>
    </mvc:annotation-driven>
    <!-- 2.静态资源默认servlet配置-->
    <mvc:default-servlet-handler/>
    <!-- 3.配置jsp 显示ViewResolver视图解析器 -->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="viewClass" value="org.springframework.web.servlet.view.JstlView" />
        <property name="prefix" value="/WEB-INF/jsp/" />
        <property name="suffix" value=".jsp" />
    </bean>
    <!-- 日期转换 -->
    <bean class="org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter">
        <property name="webBindingInitializer">
            <bean class="com.cc.utils.convertDate"/>
        </property>
    </bean>
    <!-- 4.扫描web相关的bean -->
    <context:component-scan base-package="com.cc.controller" />

</beans>
```



- **Spring配置整合文件，applicationContext.xml**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd">
    <!--3. 创建SqlSessionFactoryBean，注入连接池-->
    <bean class="org.mybatis.spring.SqlSessionFactoryBean">
        <property name="dataSource" ref="dataSource"></property>
    </bean>

    <import resource="classpath:spring/spring-dao.xml"/>
    <import resource="classpath:spring/spring-service.xml"/>
    <import resource="classpath:spring/spring-mvc.xml"/>

</beans>
```

#### Controller&视图层

- UserController

```java
package com.cc.controller;

import com.cc.pojo.User;
import com.cc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLoginUser(Model model,
                              HttpServletRequest request
                              ) {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            System.out.println(username+"  "+password);
            User user =new User();
            user.setUsername(username);
            user.setPassword(password);
            User users = userService.userLogin(user);
            if (users.getId() > 0) {
//            model.addAttribute("user", users);
                model.addAttribute("user", users);
                return "userMain";
            }
        } catch (Exception e) {
            model.addAttribute("error","Wrong username or password!");
            return "redirect:/";
        }
        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping("/toLogintest")
    public String userLogin(String name,String pwd) {
        String msg = "Wrong username or password!";
        //模拟数据库中存在数据
        if ((name != null) && (pwd != null)) {
            //        从数据库检索是否存在该用户
            User user = new User();
            user.setUsername(name);
            user.setPassword(pwd);
            try {
                User users = userService.userLogin(user);
                if (users.getUsername().equals(name) && users.getPassword().equals(pwd)) {
                    msg = "Login Success";
                }
                return msg;
            }catch (Exception e){}
            return msg; //g
        }
        return msg;
    }

    @RequestMapping("/userBuy")
    public String userBuyCard(Model model,int id) throws ParseException {
        User user = userService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "userMall";
    }
    @RequestMapping("/userMianPage")
    public String userMianPage(Model model,int id) throws ParseException {
        User user = userService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "userMain";
    }
//    跳转注册页面
    @RequestMapping("/toUserRegister")
    public String toAddPaper() {
        return "register";
    }
    //注册
    @RequestMapping("/userRegister")
    public String registerUser(User user) throws ParseException {
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = sp.format(new Date());
        user.setBegintime(date);
        user.setEndtime(date);
        user.setRemainday(0);
        userService.userRegister(user);
        return "redirect:/user/toLogin";
    }
}

```



- AdminController

```java
package com.cc.controller;

import com.cc.pojo.Admin;
import com.cc.pojo.User;
import com.cc.service.AdminService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    
    @RequestMapping("/toAddUser")
    public String toAddPaper() {
        return "register";
    }

    @RequestMapping("/addUser")
    public String addPaper(User user) throws ParseException {
        System.out.println(user);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // 日期格式
        Date date = dateFormat.parse(user.getBegintime()); // 指定日期
        Calendar cl = Calendar.getInstance();
        cl.setTime(date);
        cl.add(Calendar.DATE, user.getRemainday());
        String temp = "";
        temp = dateFormat.format(cl.getTime());
        user.setEndtime(temp);
        adminService.addUser(user);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Model model, int id) {
        User user = adminService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, User user) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 日期格式
        Date date = dateFormat.parse(user.getBegintime()); // 指定日期
        Calendar cl = Calendar.getInstance();
        cl.setTime(date);
        int allday = user.getRemainday()+user.getAddday();
        cl.add(Calendar.DATE, allday);
        String temp = "";
        temp = dateFormat.format(cl.getTime());
        user.setEndtime(temp);
        user.setRemainday(allday);
        adminService.updateUser(user);
        User users = adminService.queryUserById(user.getId());
        model.addAttribute("user", users);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/del/{userId}")
    public String deleteBook(@PathVariable("userId") int id) {
        adminService.deleteUserById(id);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/toaLogin")
    public String toaLogin() {
        return "/aLogin";
    }
    @RequestMapping("/aLogin")
    public String toLoginUser(Admin admin) {
        System.out.println(admin.getUsername()+admin.getPassword());
        try {
            Admin admins = adminService.adminLogin(admin);
            if (admins.getId() > 0) {
//            model.addAttribute("user", users);
                return "redirect:/admin/findByPage";
            }
        }catch (Exception e){
            return "/aLogin";
        }
        return "/aLogin";
    }
@RequestMapping("/findAll")
public ModelAndView findAll() {
    //1.1 调用service
    List<User> list = adminService.findAll();
    //1.2 返回结果
    ModelAndView mv = new ModelAndView();
    mv.setViewName("order-list");
    mv.addObject("list", list);
    return mv;
}

    @RequestMapping("/findByPage")
    public String findByPage(Model model,
            @RequestParam(defaultValue = "1") int pageNum,
            @RequestParam(defaultValue = "11") int pageSize) {
        PageInfo<User> pageInfo = adminService.findByPage(pageNum, pageSize);
//        PageInfo pageInfo = adminService.findByPage(pageNum, pageSize);
        //1.1 调用service
        //1.2 返回结果
        model.addAttribute("list", pageInfo.getList());
        model.addAttribute("pageInfo", pageInfo);
        return "allUserPage";
    }
    @RequestMapping("/searchUser")
    public String searchUser(Model model, String name) {
        try {
            User user = adminService.queryUserByName(name);
            System.out.println(user);
            model.addAttribute("user", user);
            if (user.getName() == null) {
                return "redirect:/admin/findByPage";
            }
            return "updateUser";
        }catch (Exception e){
            return "redirect:/admin/findByPage";
        }
    }
//    商城
@RequestMapping("/buy")
public String buyCard() throws ParseException {
    return "mall";
}

}

```

##### 视图层

![image-20200510221105529](E:\MyMD\健身房管理系统\image\vw.png)

> 详情见GitHub

### 拓展与展望

以下功能在以后可拓展开发
![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223506173-1926830963.png)

![](https://img2020.cnblogs.com/blog/1593734/202005/1593734-20200510223514318-559773983.png)


## 结束与总结

这个小Demo做了五六天,分页那里卡了接近两天，无数的坑等着踩。

期间也体会到了编程的乐趣，每天晚上都肝的快快乐乐。

所有代码放在GitHub供大家交流学习。

今天母亲节呀，祝我妈妈母亲节快乐！ 晚安！

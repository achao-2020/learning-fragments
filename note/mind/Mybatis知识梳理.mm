
<map>
  <node ID="root" TEXT="Mybatis知识梳理">
    <node TEXT="工作原理" ID="4f65d6447cc39f2c8403633039233d79" STYLE="bubble" POSITION="right">
      <node TEXT="读取配置文件" ID="8cdd0cc65f9ba9f08c7c35124527e5a1" STYLE="fork">
        <node TEXT="读取mybatis-config.xml，封装properties和builder，factory" ID="cb47fdd6d0c68ad3e26d45eebb0f7994" STYLE="fork"/>
        <node TEXT="SqlSession, mapperStament等生成" ID="e7022ad1289b9642b5449821a2cf2ed6" STYLE="fork"/>
        <node TEXT="集成spring boot扫描包路径和项目配置文件" ID="6bc56b9c0585636414ce24a9ec3b05d8" STYLE="fork"/>
      </node>
      <node TEXT="加载映射文件" ID="65f0ae8d056ba95aef4d8d2c0dbab1a9" STYLE="fork">
        <node TEXT="绑定mapper和xml(MapperProxyFactoryMap)" ID="3d422782690804c70338bf6931a82933" STYLE="fork"/>
        <node TEXT="创建会话工厂(SqlSessionFactory)" ID="2e37572310754681626c3057a1c50d39" STYLE="fork"/>
      </node>
      <node TEXT="创建会话" ID="aa8021718cdbe7835b47d7bb0b5395a2" STYLE="fork">
        <node TEXT="SqlSession生成Executor" ID="effc74634412af93d7a7b1cc781e1985" STYLE="fork"/>
        <node TEXT="SimpleExecutor" ID="b2bde818465f1654457b6d69588577f2" STYLE="fork"/>
        <node TEXT="ReuseExecutor" ID="9dc5ba5e2bc5e1e1bb444160ac33a7e2" STYLE="fork"/>
        <node TEXT="BatchExecutor" ID="680292afa37cd6a03a5882199b2f572c" STYLE="fork"/>
      </node>
      <node TEXT="获取mapper执行sql" ID="f1889c68a65e7290a4702971d4f3a283" STYLE="fork">
        <node TEXT="Executor执行器" ID="37896531d1f2f83e9c2929f6083a95b7" STYLE="fork"/>
        <node TEXT="StatementHandler" ID="74332d3a0220153696b33f6f60e55c14" STYLE="fork"/>
        <node TEXT="动态代理(mapperProxy)获取mapper" ID="69f510bb257f54ad4cfd23243a117208" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="缓存原理" ID="42852f5a1d796580c7e2281e420cbc30" STYLE="bubble" POSITION="right">
      <node TEXT="相关数据结构" ID="408bbbf117497b0e2bf365a89bed39a8" STYLE="fork">
        <node TEXT="PerpetualCache（存在于SqlSession）" ID="edfae11fdce7c8afb9dd95ebf447bf34" STYLE="fork"/>
        <node TEXT="CacheKey" ID="8f2c4de0e8cea91897e436754ab125e3" STYLE="fork">
          <node TEXT="重写了hashCode和equals方法" ID="4dfc34d7f3a5341d8358dc3a0f76dd2d" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="装饰模式" ID="160c0c35f651b1a2d78f47c10b16322d" STYLE="fork">
        <node TEXT="通过装饰模式，对缓存对象向上委托" ID="dec5fba0a1d89a62beee5ceac381f631" STYLE="fork"/>
      </node>
      <node TEXT="一级缓存" ID="5fa495ab527eeae68a093e44c954d37f" STYLE="fork">
        <node TEXT="同一个sqlSession中共享" ID="f314e5691d816dfc4ac1899dba50480e" STYLE="fork"/>
        <node TEXT="不同sqlSession中，会有脏读问题" ID="f5d090fc65c2dcad157fe39d52bea0db" STYLE="fork"/>
      </node>
      <node TEXT="二级缓存" ID="f2af2a2cefdcfc24f83bb407345e1a89" STYLE="fork">
        <node TEXT="全局缓存共享(会话级别)" ID="a77bf3652e5d4db3df2661c680adea4b" STYLE="fork"/>
        <node TEXT="多表关联查询脏数据问题" ID="808913f8f65ae554dfcaec4df0e89607" STYLE="fork">
          <node TEXT="更改缓存命名空间(key)" ID="b033e4ccc16913e5242cf8641c46fa80" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="缺陷" ID="eb71d1b27d65c08e9dc972d2d524b29d" STYLE="fork">
        <node TEXT="一级缓存在分布式的情况下，会天然存在脏读的问题" ID="d790f319a291944b60d5178ec82eb0de" STYLE="fork"/>
        <node TEXT="二级缓存在多表查询，也可能出现脏读问题" ID="0b983bcf5af8b4416241a57e3b3a80b6" STYLE="fork"/>
        <node TEXT="建议：关闭mybatis换粗，直接使用redis等中间件" ID="7164514faceee0308f64920e828a1e6e" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="拦截器" ID="8c3edfdf698a6f2a40ed326d776d54bd" STYLE="bubble" POSITION="right">
      <node TEXT="原理" ID="b1b8b53afbae6083a8e7095c66afe482" STYLE="fork">
        <node TEXT="JDK动态代理+责任链模式(拦截配置注解)" ID="7495f350a052336acb4dbe6c2dc77a8f" STYLE="fork"/>
      </node>
      <node TEXT="动态代理对象" ID="e57c125bbda7e5372e1f6ee902e615c1" STYLE="fork">
        <node TEXT="ParameterHandler" ID="0fced12263d07a5b8e62d2261775b69e" STYLE="fork"/>
        <node TEXT="ResultSetHandler" ID="9165a678ea98b91edd0efafaada6f351" STYLE="fork"/>
        <node TEXT="StatementHandler" ID="7878322ddb32a8da6756fb2af362dbe6" STYLE="fork"/>
        <node TEXT="Executor" ID="e4fed77b2be8de8abd2015bd377af6c7" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="延迟加载" ID="06acee2d73e22a4d15d6e120a30b3711" STYLE="bubble" POSITION="right">
      <node TEXT="支持对象" ID="a572493211943748a43aadf559b93d74" STYLE="fork">
        <node TEXT="association" ID="0b95c9773227a68aa3b2aa2d2fb7f433" STYLE="fork"/>
        <node TEXT="collection" ID="7572d55fe2ccff9ad019c4dc42a2ae99" STYLE="fork"/>
      </node>
      <node TEXT="基本原理" ID="7d124519296e006eb2dcd751d704821c" STYLE="fork">
        <node TEXT="动态代理" ID="4aaae6914e96513ffd3a077b2ed58252" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="预编译" ID="d75e175cdc903240b360d91190e5205a" STYLE="bubble" POSITION="right">
      <node TEXT="内容" ID="1ab95522a433eb7d1dbd91c528cb27b9" STYLE="fork">
        <node TEXT="将原始sql模板化，一次编译，多次运行" ID="fc8ef98e51e130d0d6ccbe6840514989" STYLE="fork"/>
        <node TEXT="防止sql注入，提高安全性" ID="226a4223f7272419d7f92819a5c179e7" STYLE="fork"/>
        <node TEXT="多数情况下mysql直接运行，不需要再次编译" ID="9af1b572895f69a9b0c3eeec25941460" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="优点和缺点" ID="995ffe085f1e385152617636d9ee6e40" STYLE="bubble" POSITION="right">
      <node TEXT="优点" ID="3c3cd7d3db8ae670eb4558cda1cd6746" STYLE="fork">
        <node TEXT="与JDBC相比，减少了50%以上的代码量。" ID="3f8fb358422e2afa5e02b7a644f8d443" STYLE="fork"/>
        <node TEXT="MyBatis是易学的持久层框架，小巧并且简单易学。" ID="cb2dfd7caaaca1f11925daa26c69f613" STYLE="fork"/>
        <node TEXT="MyBatis相当灵活，不会对应用程序或者数据库的现有设计强加任何影响，SQL写在XML文件里，从程序代码中彻底分离，降低耦合度，便于统一的管理和优化，并可重用。" ID="a5df1e26916172dfceafa4d8ec95336d" STYLE="fork"/>
        <node TEXT="提供XML标签，支持编写动态的SQL，满足不同的业务需求。" ID="578212ed6c063370879b2e8b33387aad" STYLE="fork"/>
        <node TEXT="提供映射标签，支持对象与数据库的ORM字段关系映射。" ID="045e0677d7b59f9f48fcd725644c3f39" STYLE="fork"/>
      </node>
      <node TEXT="缺点" ID="419b7edf0a749ff7b75139486f101d6f" STYLE="fork">
        <node TEXT="SQL语句的编写工作量较大，对开发人员编写SQL的能力有一定的要求。" ID="1f7e9d69c7469bafedc38ddf94df8699" STYLE="fork"/>
        <node TEXT="SQL语句依赖于数据库，导致数据库不具有好的移植性，不可以随便更换数据库。" ID="14c7004bd9604490d594b037e9438aee" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>
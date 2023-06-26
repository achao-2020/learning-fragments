
<map>
  <node ID="root" TEXT="领域驱动(DDD)设计思想">
    <node TEXT="总览" ID="ecee1112fafaa334dbf062322c9594a9" STYLE="bubble" POSITION="right">
      <node TEXT="参考文章" ID="48a3f1b8f1e9fdddc5f0bbef965a43b4" STYLE="fork">
        <node TEXT="https://hanchenhao.github.io/MadBOK/DomainDrivenDesign/%E5%89%8D%E8%A8%80.html" ID="0f68ce8cb78c6a54c59dd3585dd97d56" STYLE="fork"/>
      </node>
      <node TEXT="概括" ID="b644b19a47af72e50fbe3f5de5187321" STYLE="fork">
        <node TEXT="面向对象思想的回归和升华" ID="969f77b7a861d52f3dd475751d47f677" STYLE="fork"/>
        <node TEXT="降低系统的复杂度，更好的去遵循开闭原则" ID="3a594f5a3771693c44509598ee9d7d3b" STYLE="fork"/>
        <node TEXT="切合业务设计，让业务模型和架构(代码)模型尽可能统一" ID="3c671a2da755116af215b6f399704457" STYLE="fork"/>
      </node>
      <node TEXT="演变" ID="32a177591478b5d9c0c811edc292a266" STYLE="fork">
        <node TEXT="单机服务" ID="36e323ae5ab46a3d605f3a2c6dac7d04" STYLE="fork">
          <node TEXT="业务和代码实现差距大，导致实现功能和需求有偏差" ID="9149260de2f4913898760c7743653734" STYLE="fork"/>
        </node>
        <node TEXT="集中式架构(三层架构)" ID="fb23aa65009ae62b8f7ce3f4e92556f8" STYLE="fork">
          <node TEXT="性能受限，单点故障影响大，可扩展性差" ID="21b0b253dc15996f28e6d59a1c6ad349" STYLE="fork"/>
        </node>
        <node TEXT="微服务" ID="133306a7a33caece3491a16797ffeb36" STYLE="fork">
          <node TEXT="领域模型划分应用边界，指导微服务划分" ID="7da72da2bdfa326fc677fddd5e3cade5" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="领域模型" ID="8eb6ecd3750984f62a3a709e45d6b71e" STYLE="bubble" POSITION="right">
      <node TEXT="核心思想" ID="92b475b80bcfcf70677ecd290f01965d" STYLE="fork">
        <node TEXT="邻域模型确定业务和应用边界，保证业务模型和代码模型的一致性" ID="34a3fa42750eb762bf7803e6c29f56d6" STYLE="fork"/>
      </node>
      <node TEXT="划分步骤" ID="ef099df5ce12dcf3a75ae68794d5c351" STYLE="fork">
        <node TEXT="在事件风暴中梳理业务过程中的用户操作、事件以及外部依赖关系等，根据这些要素梳理出领域实体等领域对象" ID="e61ce538eac1eed00333251cca163c5e" STYLE="fork"/>
        <node TEXT="根据领域实体之间的业务关联性，将业务紧密相关的实体进行组合形成聚合，同时确定聚合中的聚合根、值对象和实体" ID="9c5f9aec2e97af3ffaeb89c4dc2cd694" STYLE="fork"/>
        <node TEXT="根据业务及语义边界等因素，将一个或者多个聚合划定在一个限界上下文内，形成领域模型" ID="e7be090bd39320882cc87545ae7c98bf" STYLE="fork"/>
      </node>
      <node TEXT="举例" ID="798cc14db9bdc64cd9b84ccf70c2ec2c" STYLE="fork">
        <node TEXT="" ID="6e6a318dc2818f6056072e617ffcb619" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="限界上下文" ID="b20f4dcda867b993e0045336f1f2552e" STYLE="bubble" POSITION="right">
      <node TEXT="意义" ID="e54ede911de07532a012b9d48874dabb" STYLE="fork">
        <node TEXT="统一业务语言和代码语言，保证相关术语、对象没有二义性" ID="13d652c6ec09f46582f5a9854d867c87" STYLE="fork"/>
        <node TEXT="理论上，一个限界上下文就是一个微服务" ID="eccc9f68e204493e6849c10e1c772749" STYLE="fork"/>
      </node>
      <node TEXT="如何拆分" ID="12cae8f935cde197e8d5053b99861f21" STYLE="fork">
        <node TEXT="首先确定领域" ID="62d79f95047d2840748a8c5774f5920b" STYLE="fork"/>
        <node TEXT="通过事件风暴，将邻域拆分为许多子域" ID="e8dcd744b88355c02fabebefdba5da78" STYLE="fork"/>
        <node TEXT="当子域拆分到一定程度，就出现了限界上下文边界" ID="7e102d3626cb8c6d501ae148d80c2f41" STYLE="fork"/>
      </node>
      <node TEXT="例子" ID="d6a5a8396d3aafd56d2d11dbd1bfc9dd" STYLE="fork">
        <node TEXT="" ID="15304082fbcf7fa908477aa4eb763cb2" STYLE="fork"/>
        <node TEXT="虚线表示限界上下文边界" ID="498a3afea22787f4c34aaa0a0a355345" STYLE="fork"/>
        <node TEXT="一个子域可能包含多个限界上下文边界，也有可能改子域本身就是一个限界上下文" ID="1c1a3c5e2f3c4358becf661362eb2876" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="实体和值对象" ID="94b80eff0c380e52dfb1e95432c65289" STYLE="bubble" POSITION="right">
      <node TEXT="实体定义" ID="e1d484d82695b8f0561daf9df7d14980" STYLE="fork">
        <node TEXT="具有唯一标识" ID="84bfd42a4b8bcd1117b96115aac498f1" STYLE="fork"/>
        <node TEXT="组成领域模型的基础单元" ID="15911d391412e683636684be47fe47d2" STYLE="fork"/>
      </node>
      <node TEXT="实体的形态" ID="15e4b2384a203c69d17bbc8d99ee9c50" STYLE="fork">
        <node TEXT="业务形态" ID="1563186df3ed14eff741f20b71e1746a" STYLE="fork">
          <node TEXT="不同事件下，关联出实体" ID="c9643415a5774c8275f1a980cd41125f" STYLE="fork"/>
        </node>
        <node TEXT="代码形态" ID="11fff9857df310b905bd22c8b54a0c40" STYLE="fork">
          <node TEXT="充血模型，定义业务逻辑方法" ID="87f4d90c217918bf124e831ef422b81b" STYLE="fork"/>
        </node>
        <node TEXT="运行状态" ID="7b70710c7d91fb038e8ab991a663c2b0" STYLE="fork">
          <node TEXT="具有生命周期，唯一标识确定唯一" ID="083dad9205da3e8a853821a387c53801" STYLE="fork"/>
        </node>
        <node TEXT="数据库形态" ID="afc0e7b8cdfd5bbd84230397ed30fa13" STYLE="fork">
          <node TEXT="通常一对一，有可能一对多" ID="d0fc7badd8b56faff41a869fcbb24eab" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="值对象定义" ID="6d1b257cea1e14d1d0c4883a2acf8db7" STYLE="fork">
        <node TEXT="不可变的数据集合，如地址" ID="2e515942d5a5252540b3a5f6ea720407" STYLE="fork"/>
      </node>
      <node TEXT="值对象的形态" ID="1d7782b119bd74810ab7f302a03de99b" STYLE="fork">
        <node TEXT="业务形态" ID="86968ed16bc37f3e62d53f677c8e8b9e" STYLE="fork">
          <node TEXT="描述实体的特征" ID="6d0bbe5e1dd57a02fe50ac4609f50fb8" STYLE="fork"/>
        </node>
        <node TEXT="代码形态" ID="8a72b565458a419599f8b87641d7796b" STYLE="fork">
          <node TEXT="作为一个值对象被实体引用" ID="6f257162acedb1c5a3782a4ed824b072" STYLE="fork"/>
        </node>
        <node TEXT="运行形态" ID="c5656afed5d0e1f6fc0c2d01ed166cf0" STYLE="fork">
          <node TEXT="属性嵌入实体或者对象关联" ID="855e058ea84f518ef76094498a861118" STYLE="fork"/>
        </node>
        <node TEXT="数据库形态" ID="8739a0270f23ff6d2424d0a108668a11" STYLE="fork">
          <node TEXT="代码上保留值对象和实体对象含义，数据库可以考虑嵌入实体表中" ID="45bc297a07bf04f6c6b06b1519f4fdb0" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="聚合和聚合根" ID="813150ff0dbaa5316f600abe890effd6" STYLE="bubble" POSITION="right">
      <node TEXT="定义" ID="26bbe16776923b4b0332a90b4baf7cef" STYLE="fork">
        <node TEXT="能让实体和值对象协调工作并保持他们数据一致性的组织就叫做聚合，聚合根就是这个组织的负责人" ID="24e11326465e720b6ca79757aad62e2c" STYLE="fork"/>
      </node>
      <node TEXT="如何设计" ID="9ceaf1332b4db710d1486e7c4690bce8" STYLE="fork">
        <node TEXT="在一个领域中，根据业务事件，梳理出所有的实体和值对象" ID="b36c203441be536c72f8fb7b41fed825" STYLE="fork"/>
        <node TEXT="在众多实体中找出聚合根(独立的生命周期，可以创建修改其他对象)" ID="f4b9f328d33df85076a9e63d491f954b" STYLE="fork"/>
        <node TEXT="根据这个聚合根，找出其紧密关联的实体和值对象，这就是所有聚合" ID="87cf84c218fa8069318923069f135126" STYLE="fork"/>
      </node>
      <node TEXT="聚合的设计原则" ID="ffecee2cc1aecccaba047801feacc00f" STYLE="fork">
        <node TEXT="聚合内实体对象数据一致性" ID="3f57221664f5ed7db6416b5082661ce8" STYLE="fork"/>
        <node TEXT="设计小聚合" ID="d3331b2e5c1d4cd87a317afa8427c829" STYLE="fork"/>
        <node TEXT="唯一标识ID为聚合之间的桥梁" ID="8840283c24c214778ada8826481f91d1" STYLE="fork"/>
        <node TEXT="一次事务只能改一个聚合的状态，改多个聚合需要用到异步的领域事件" ID="5704630ca431e9d527b5a0d41444ad2f" STYLE="fork"/>
        <node TEXT="通过应用层实现跨聚合的调用" ID="fdf977b255793829bc7ed131196c341c" STYLE="fork"/>
      </node>
      <node TEXT="聚合及其对象的特点" ID="213efedb093f374c31b111e43ec50a18" STYLE="fork">
        <node TEXT="聚合" ID="94f1f7db55fb8b9045c9f72cc40df377" STYLE="fork">
          <node TEXT="高内聚，低耦合，" ID="fccd81ed804b08a7abcf6d50e2c312b7" STYLE="fork"/>
        </node>
        <node TEXT="聚合根" ID="877b0b8aa85311a0947df621900f9db7" STYLE="fork">
          <node TEXT="是实体，具有全局唯一标识，有独立的生命周期，聚合实体的&quot;管理者&quot;" ID="35e2bc9e8100c28ab4f7b66f840f5467" STYLE="fork"/>
        </node>
        <node TEXT="实体" ID="f69e859065c49737786c57bcbba1b055" STYLE="fork">
          <node TEXT="有ID标识，可以通过ID判断相等性，可以持久化，生命周期受聚合根影响" ID="1f987d7f0753b62d685ea155ae4f5089" STYLE="fork"/>
        </node>
        <node TEXT="值对象" ID="84ccef284c5e742961c05be80f17ddf6" STYLE="fork">
          <node TEXT="无ID，无生命周期，通过属性值判断相等" ID="9e24f093615bfe639a769bb2cabb23c0" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="领域事件" ID="cc76137e9efb29e7a053f1467d6ed840" STYLE="bubble" POSITION="right">
      <node TEXT="定义" ID="e459e1d5c0caca9a686a702374245032" STYLE="fork">
        <node TEXT="聚合之间保证数据最终一致性的业务行为" ID="9b1b054f22824beb62d7bec9676cc204" STYLE="fork"/>
      </node>
      <node TEXT="识别事件" ID="d9d829c95e47be22620b54538dc08266" STYLE="fork">
        <node TEXT="业务中有通知、触发等字眼时，往往伴随着事件的产生" ID="0e56cfa765775061c2f2e6f57ce021c2" STYLE="fork"/>
        <node TEXT="聚合内事务一致性，聚合外使用最终一致性，聚合根之间的数据交互，使用事件" ID="7f9606efdd77f67862f5e83ec271be03" STYLE="fork"/>
      </node>
      <node TEXT="总体架构" ID="b56aa225e5781f1f5bca845d5fdc5b8d" STYLE="fork">
        <node TEXT="事件构建发布" ID="2225427c824b4e7f4f344bb4caa23165" STYLE="fork">
          <node TEXT="显式发布" ID="0fe24939c01214d7cd083f789c02bbf5" STYLE="fork"/>
          <node TEXT="AOP本地线程遍历发布" ID="93f0158b744659735cc7ecb8db6bb12f" STYLE="fork"/>
          <node TEXT="日志捕获手段发布" ID="394b4b63bcb08c1e83cf2ab615224ba4" STYLE="fork"/>
        </node>
        <node TEXT="事件持久化" ID="075b87eedb9f023c065833041b5351d1" STYLE="fork">
          <node TEXT="系统之间对账，意外情况可手动触发" ID="4e29087cfbaae42e69b3fa2320cfde39" STYLE="fork"/>
          <node TEXT="与业务表同一数据库，避免分布式事务问题" ID="648842d9e84ef446acfec7c01ab7e2f1" STYLE="fork"/>
        </node>
        <node TEXT="事件总线" ID="7d69da28b5ed1c5b2fd4fc4c2d975602" STYLE="fork">
          <node TEXT="传递所有事件" ID="6e4ea031509c2862983e491489de8935" STYLE="fork"/>
          <node TEXT="对内直接传递，对外先持久化再异步发送事件" ID="cce4d9a481f4b44ed9242b1a69e7f9cc" STYLE="fork"/>
        </node>
        <node TEXT="事件接收处理" ID="478882bbcb2ef26db7c4a047fbbfbf76" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="分层架构" ID="d336ce8e03f40f1e167f6f1ea12d290d" STYLE="bubble" POSITION="right">
      <node TEXT="用户接口层" ID="9dbca41e6254fa8f6918a381fbfcd590" STYLE="fork">
        <node TEXT="负责对外展示信息和解析输入的数据，转化为应用层可识别的数据" ID="24fa71c78632acacf99b7e143afb783b" STYLE="fork"/>
      </node>
      <node TEXT="应用层" ID="37233e37e780e7bf569f573542e05416" STYLE="fork">
        <node TEXT="面向业务用例和流程的操作" ID="052bc087ad8e5ab365b625727daddf70" STYLE="fork"/>
        <node TEXT="编排领域服务完成业务场景" ID="ae6926da516cf159e7dac1c6db94abbf" STYLE="fork"/>
        <node TEXT="认证，授权，事务控制，发送和订阅事件" ID="05da67e5fae0fa1abf4c6ff4c6a8b701" STYLE="fork"/>
      </node>
      <node TEXT="领域层" ID="eeb29d0b2719fca677bed1f8f706c362" STYLE="fork">
        <node TEXT="实现业务的核心逻辑" ID="703adb50b4f03262f2de2682e05f87f3" STYLE="fork"/>
        <node TEXT="实体不能完成的业务逻辑，领域服务协调多个实体共同完成复杂业务逻辑" ID="2dc1692d07e56e3d24e5b6e71b652f2b" STYLE="fork"/>
      </node>
      <node TEXT="基础层" ID="7b8cc0b14dacd10c1813968c1fdf30ff" STYLE="fork">
        <node TEXT="提供所有通用的基础服务组件给其他层使用" ID="fc475f0374c3329a3534aaa14058d2ce" STYLE="fork"/>
        <node TEXT="例如：第三方工具、驱动、消息中间件、网关、文件、缓存以及数据库" ID="996d360a3945c884a26081154c608adb" STYLE="fork"/>
      </node>
      <node TEXT="重要原则：每层只能与位于其下方的层发生耦合。" ID="440652c326dc25f6750461fd8f706768" STYLE="fork"/>
    </node>
  </node>
</map>
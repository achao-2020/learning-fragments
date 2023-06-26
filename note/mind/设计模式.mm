
<map>
  <node ID="root" TEXT="设计模式">
    <node TEXT="六大原则" ID="2b3e461a5e0eb345bc140427d7c93e26" STYLE="bubble" POSITION="right">
      <node TEXT="单一职责" ID="f4a460ea043c728f14714e330fa22672" STYLE="fork">
        <node TEXT="一个类只承担一种职责" ID="ffaa9ed4a2da25b7f63729a366acfd20" STYLE="fork"/>
        <node TEXT="职责需要设计者仔细斟酌" ID="decd673c5feac2a97cc1fc920cb68523" STYLE="fork"/>
      </node>
      <node TEXT="里氏替换原则(LSP)" ID="768a5663e185c0cbc82daa80604aeac1" STYLE="fork">
        <node TEXT="子类可以扩展父类的功能，但是不能改变父类原有的功能" ID="4d9f7e1827ee05754cef627edf250f61" STYLE="fork"/>
        <node TEXT="子类可以替换父类出现的位置" ID="1548c8a7fffdf340a444dacdda089c69" STYLE="fork"/>
      </node>
      <node TEXT="依赖倒置原则" ID="ac61bdec545b6799878ddc37a187e952" STYLE="fork">
        <node TEXT="高层模块不依赖于底层模块" ID="e130cb09ea2b4a2ab255fb6806bacaf4" STYLE="fork"/>
        <node TEXT="抽象不依赖于具体实现" ID="6e84476fe3f4fa6999596e950014b728" STYLE="fork"/>
        <node TEXT="细节应该依赖抽象" ID="bb384e0be97dd69a800e3dc2a30e645a" STYLE="fork"/>
        <node TEXT="面向接口编程" ID="759e7c045bbcdba1ab88fdf39e6f0d27" STYLE="fork"/>
      </node>
      <node TEXT="接口隔离原则" ID="4a4e18f913142cfee7b75c3d0de6e2e7" STYLE="fork">
        <node TEXT="接口需要被拆分更小更具体" ID="1c8998b16bf391aae2f0d6a7e2aa44af" STYLE="fork"/>
        <node TEXT="每个接口需要满足单一职责" ID="a15060708d74f0e9bf3c165623c62851" STYLE="fork"/>
      </node>
      <node TEXT="迪米特法则" ID="1086410ecdfe9c9f08e71777269e603f" STYLE="fork">
        <node TEXT="最少知识原则" ID="fe53052a0a22f3ccc984bdb1cf035344" STYLE="fork">
          <node TEXT="耦合的类暴露的方法是最少的，最简单的" ID="a1490ef8a98e0cbc181f7c611909b1df" STYLE="fork"/>
          <node TEXT="也就是说public提供出去的方法是最精简的" ID="801dc42dc525b2d0b8d074cbfbb02088" STYLE="fork"/>
          <node TEXT="不需要提供的方法使用private修饰" ID="fb6be13e3991d88d5b2761ae07ec6c44" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="开闭原则" ID="e7f791978b77b6de27b88fd9a0ed55d9" STYLE="fork">
        <node TEXT="精神领袖" ID="6852d10348d851eb75d7352b2271cb04" STYLE="fork"/>
        <node TEXT="对扩展开发，对修改关闭" ID="1303d51f4161f961edbe31365db9e338" STYLE="fork"/>
        <node TEXT="新功能的开发，不应该影响到旧代码修改" ID="13fdfc1506611c1d82f9f8a2e58dd72e" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="23中设计模式" ID="111e40c9b012665642168d60d4cbb96d" STYLE="bubble" POSITION="right">
      <node TEXT="创建型模式" ID="6102ea00339a3d2229bc6f895203814e" STYLE="fork">
        <node TEXT="工厂模式" ID="dd239869745e7b02fb5d6d44ddbdf259" STYLE="fork">
          <node TEXT="工厂创建具体功能对象" ID="7e1c9e931a998dce97ce5f39f15062fb" STYLE="fork"/>
        </node>
        <node TEXT="抽象工厂模式" ID="0715cfc713f79f96023831b6d5a336e1" STYLE="fork">
          <node TEXT="工厂抽象，其余和工厂模式一致" ID="6ae861094fce0a5429d344a575db5aa9" STYLE="fork"/>
        </node>
        <node TEXT="单例模式" ID="40b0fbfb96faa1b681801f1150e4b9b6" STYLE="fork">
          <node TEXT="懒汉模式(需要时加载)" ID="f248624a16260238cfdf09033361761d" STYLE="fork">
            <node TEXT="静态内部类" ID="c68cd415848a8c0950b58cf5e959088f" STYLE="fork"/>
            <node TEXT="静态常量" ID="c7329d6eaf061a1d75a2d287218af501" STYLE="fork">
              <node TEXT="双重校检锁" ID="f2a6664213d5e2c3536f56871e3d7322" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="饿汉模式(初始化就加载)" ID="fed7af8469a5b2ba96e743a3fad800ec" STYLE="fork">
            <node TEXT="静态常量" ID="9be05ff323f199b7507a07ed89143931" STYLE="fork"/>
            <node TEXT="静态代码块" ID="ca4b388b67c0a147858e206f4055b013" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="建造者模式" ID="5584d09a7b307e83d008e50576b415dd" STYLE="fork">
          <node TEXT="与工厂模式类图一致，关注的是组成部分，工厂模式关注的是功能" ID="7e3641dde58e6dc101eff22da2e7cdfa" STYLE="fork"/>
        </node>
        <node TEXT="原型模式" ID="4ec0a9555300d5362628885197a471d8" STYLE="fork">
          <node TEXT="浅克隆" ID="692ce9001c1ae7dc1d4bdb76c2d43f36" STYLE="fork">
            <node TEXT="实现Cloneable，重写clone()方法" ID="d649c883261805ff574c45bedf088bec" STYLE="fork"/>
          </node>
          <node TEXT="深克隆" ID="88d081e3f97a48a28c4d8469de2d4c0e" STYLE="fork">
            <node TEXT="基本数据类型和String不用考虑" ID="fd17b05fae2216dc0abef807feea834c" STYLE="fork"/>
            <node TEXT="集合需要序列化拷贝" ID="37b2d4aae5294c272c365be42ad8b1f8" STYLE="fork"/>
            <node TEXT="引用类型使用序列化，或者嵌套实现Cloneable，或者手动实例化赋值" ID="d3ecba012260148d4dc887cec7c5c36b" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="结构型模式" ID="4c511e4b13193bf8e40426bf0d5d4f0e" STYLE="fork">
        <node TEXT="装饰者模式" ID="71fed2467123500de2b05e249e61026c" STYLE="fork">
          <node TEXT="譬如穿衣顺序，添衣不影响已经穿好的衣服" ID="8f03a46ff0a5db9a833692a42bfd8ac8" STYLE="fork"/>
        </node>
        <node TEXT="代理模式" ID="cc6a8aad2d32179840abfaef9a7c7145" STYLE="fork">
          <node TEXT="用户和agent交互，agent和真实提供服务对象交互" ID="a7efdbf04ee890d07980a747a89dcd94" STYLE="fork"/>
        </node>
        <node TEXT="外观模式" ID="3c26daada92f58710697af83d71ad2e2" STYLE="fork">
          <node TEXT="隐藏了复杂内部结构，提供简单接口给调用方" ID="9baee0f560b376c4e4d511d273ad5bee" STYLE="fork"/>
        </node>
        <node TEXT="组合模式" ID="f7b92fcf1bd4f9b7c84f539e21e0af35" STYLE="fork">
          <node TEXT="表示层级结构(树)的一种设计模式" ID="597b34b632a6de613caf5d6be7ff7aa2" STYLE="fork"/>
        </node>
        <node TEXT="适配器模式" ID="3df13c35e9277c029d84917c558f9c10" STYLE="fork">
          <node TEXT="不兼容的接口之间的桥梁，接口use适配器" ID="080cf12d9a00fb389edb5df653bb7996" STYLE="fork"/>
        </node>
        <node TEXT="享元模式" ID="f9e86db12b6eb11a84ec2beb50ecb4ce" STYLE="fork">
          <node TEXT="HashMap 存储可共享对象，避免重新创建" ID="e48d0864ca4f1ee4b191619c949a72d0" STYLE="fork"/>
        </node>
        <node TEXT="桥接模式" ID="fffafb112c66715f3f27d340dc7d3460" STYLE="fork">
          <node TEXT="桥接器(高级逻辑)use低级" ID="78f75753b85ca31d63ba103b8fc10826" STYLE="fork">
            <node TEXT="桥接器可以有不同实现完成高级逻辑，低级共有，策略模式没有高级逻辑" ID="604346a2cfc44c586cfaf41faf88d4cc" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="行为型模式" ID="e5fbaf16a709070b06876e3aa2fd59d4" STYLE="fork">
        <node TEXT="策略模式" ID="2d5de19a9434aa8b01dfc8e02924ffa6" STYLE="fork">
          <node TEXT="策略上下文封装多种算法，与桥接模式不同的是，策略上下文没有高级逻辑" ID="b58c4605b7e0dcd8dfa21da78c3843a6" STYLE="fork"/>
        </node>
        <node TEXT="模板模式" ID="f599e30c0553256f96bfb47f9a67abc4" STYLE="fork">
          <node TEXT="抽象类定义某个方法的步骤(方法组合)，这些步骤(方法)需要子类自己实现。" ID="fdd242a0ae0a836893e68352f961f98e" STYLE="fork"/>
        </node>
        <node TEXT="观察者模式" ID="b34cab7e8531502b03266beea2ced62d" STYLE="fork">
          <node TEXT="在抽象类里有一个 ArrayList 存放观察者们" ID="2022f4e4c0c34d1b695b7f072aefcfe3" STYLE="fork"/>
        </node>
        <node TEXT="迭代器模式" ID="b7d1c23ab0df03755ab16aaac4eec1f2" STYLE="fork">
          <node TEXT="定义接口：hasNext, next，如java中的iterator" ID="8efcf253f9372faa1b8be902b7036656" STYLE="fork"/>
        </node>
        <node TEXT="责任链模式" ID="95b7373967f29850683d15bcdc96d52c" STYLE="fork">
          <node TEXT="处理本责任范围内的事情，不属于本范围的交给上一级处理" ID="e5be9f70526293fa0fc66a8cdc0bd265" STYLE="fork"/>
        </node>
        <node TEXT="命令模式" ID="4549f432b85cddbd0c737e8f1639483c" STYLE="fork">
          <node TEXT="定义三个角色：1、received 真正的命令执行对象 2、Command 3、invoker 使用命令对象的入口" ID="5492a16f27cafa830e3b098de834ff79" STYLE="fork"/>
        </node>
        <node TEXT="备忘录模式" ID="838c0ae55f73ccde0aad6f72aa058317" STYLE="fork">
          <node TEXT="三个类实现: Memento(真实存储备忘)、Originator(执行存储，提取备忘) 和 CareTaker" ID="7931dd34ade8974578bbcba6073f0041" STYLE="fork"/>
        </node>
        <node TEXT="状态模式" ID="c477fa45504eca7db2cb90e5b09dba01" STYLE="fork">
          <node TEXT="Context 使用 State，通过不同的state实现类完成对应状态行为" ID="297e6c6eb3fa3932b879c0982da2cc28" STYLE="fork"/>
        </node>
        <node TEXT="访问者模式" ID="62189da3cf1291eea242b5838b120348" STYLE="fork">
          <node TEXT="暴露对外方法，提供一些私有的方法，给外部对象使用" ID="04da23674735c71d776d89e433db1600" STYLE="fork"/>
        </node>
        <node TEXT="中介者模式" ID="8411c4318d8472152410a437b8333844" STYLE="fork">
          <node TEXT="中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。" ID="bc706c110dcbcab8d1f3b2b84f27272f" STYLE="fork"/>
        </node>
        <node TEXT="解释器模式" ID="e1366152415c38feb9c34234264dbf06" STYLE="fork">
          <node TEXT="对于一些固定文法构建一个解释句子的解释器" ID="c8150c28fb9ef5cd20b6870b1cbe012a" STYLE="fork"/>
        </node>
      </node>
    </node>
  </node>
</map>

<map>
  <node ID="root" TEXT="JVM知识梳理">
    <node TEXT="类的加载机制" ID="2fe5e3461feab17db723491f93b9f4aa" STYLE="bubble" POSITION="right">
      <node TEXT="加载" ID="7dccbe2f7457cbc894682541567f7888" STYLE="fork">
        <node TEXT="将Java源文件动态编译为.class文件" ID="28f453a10e8dd6e79754065fef5175fa" STYLE="fork"/>
        <node TEXT="通过一个类的全限定名来获取其定义的二进制字节流。" ID="fb1f98f8fafb617e3daa331c06f73389" STYLE="fork"/>
        <node TEXT="将这个字节流所代表的静态存储结构转化为方法区的运行时数据结构。" ID="9d6d834beb252afe6329544c6e7ec907" STYLE="fork"/>
        <node TEXT="在Java堆中生成一个代表这个类的 java.lang.Class对象，作为对方法区中这些数据的访问入口" ID="0efac3fa59fab6f1504b239bc0577a64" STYLE="fork"/>
      </node>
      <node TEXT="连接" ID="d9fbbe649868d481f7881eaad8908fbc" STYLE="fork">
        <node TEXT="验证(保证加载类的正确性)" ID="a8c5df32535e7e6df79c686707e1741a" STYLE="fork">
          <node TEXT="文件格式验证" ID="667ea136ae81aaaf7f856b00039343bf" STYLE="fork"/>
          <node TEXT="元数据验证" ID="bccaa1e83fb9e786ae9e1928ff33122d" STYLE="fork"/>
          <node TEXT="字节码验证" ID="44496d8b28ae443958c1d8229c65f10c" STYLE="fork"/>
          <node TEXT="符号引用验证" ID="e6014793a80c01fd724d808797dd1753" STYLE="fork"/>
        </node>
        <node TEXT="准备" ID="ff4ff5b82e52041f4b126a7f0f370d54" STYLE="fork">
          <node TEXT="静态变量分配内存，初始化为默认值" ID="4458169bfd59c47b1398998fdf653d8f" STYLE="fork"/>
          <node TEXT="真正赋值的操作在初始化阶段才会执行" ID="dfc0e7f568fd5370215aed57ef6ff840" STYLE="fork"/>
          <node TEXT="静态常量直接赋值" ID="e949023b5e43977478fd423dd84031ff" STYLE="fork"/>
        </node>
        <node TEXT="解析" ID="87398979994b52b87313a31076caf5f0" STYLE="fork">
          <node TEXT="动态加载的解析是在初始化后执行的" ID="767726021813153a1843f023777cdfe4" STYLE="fork"/>
          <node TEXT="把类的符号引用转换为直接引用" ID="9350ebf17522ac77b1893260a0a13a94" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="初始化" ID="9b2021c809723dd3e10a5e7959e3b3f5" STYLE="fork">
        <node TEXT="时机：当对类的主动使用的时候" ID="799c233885043eaacdfd4213d1ab3129" STYLE="fork"/>
        <node TEXT="假如这个类还没有被加载和连接，则程序先加载并连接该类" ID="308a18a19527baddd12143579cfafcf4" STYLE="fork"/>
        <node TEXT="假如该类的直接父类还没有被初始化，则先初始化其直接父类" ID="d5ed3588068cf9bd35e9de618fd45b15" STYLE="fork"/>
        <node TEXT="假如类中有初始化语句，则系统依次执行这些初始化语句" ID="09344dff618ef626339861aa58a114ad" STYLE="fork"/>
      </node>
      <node TEXT="类加载器" ID="4f23a88147279318a0d8e0f92b0dd26a" STYLE="fork">
        <node TEXT="类型" ID="4320b8c17fde1933e713f08138333112" STYLE="fork">
          <node TEXT="启动类加载器" ID="ba0e7237256f4f627d44ea649808fd1d" STYLE="fork">
            <node TEXT="JDK\jre\lib" ID="a8b17188764dbc1f02134b9eb0d283a3" STYLE="fork"/>
          </node>
          <node TEXT="扩展类加载器" ID="c59bf18bcf3cf95d98a340932425037a" STYLE="fork">
            <node TEXT="JDK\jre\lib\ext" ID="1e33d10fc8fe623da3db3078c284d5db" STYLE="fork"/>
          </node>
          <node TEXT="引用类加载器" ID="9f5fce028dff884c1691304883742fb1" STYLE="fork">
            <node TEXT="用户类路径指定类" ID="edb238effb12557e944141a9f50206d8" STYLE="fork"/>
          </node>
          <node TEXT="自定义类加载器" ID="39dfe2e877a630b4db32f3d2c9d80095" STYLE="fork">
            <node TEXT="自动验证数字签名" ID="8b48c2a2d9a2ae982c176a4f5388a8bd" STYLE="fork"/>
            <node TEXT="动态创建符合用户特定需要的定制化构建类" ID="754684c9b2aac2ac88a51941fc40b4b7" STYLE="fork"/>
            <node TEXT="从特定场所获取class，例如从数据库中和网络中" ID="d4f864e453471278c505c5eced9d2d69" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="机制" ID="db3d3720665a9b25ce994b2fc4238835" STYLE="fork">
          <node TEXT="全盘负责" ID="e4a0e99696c63cf0c7b0cff46d61a350" STYLE="fork">
            <node TEXT="类加载器会加载当前类和引用的类" ID="2f5b6f8abb7949400f286eaad5d6c36f" STYLE="fork"/>
          </node>
          <node TEXT="父类委托" ID="2ea52b1bf88ee39f94755c3770331bec" STYLE="fork">
            <node TEXT="先让父类加载器加载，不行再向下使用加载器" ID="017823daffb6c4a52950a74df899dfd1" STYLE="fork"/>
          </node>
          <node TEXT="缓存机制" ID="120e681c7cfedf9abdac29154fdf385e" STYLE="fork">
            <node TEXT="类加载时，会先从缓存区里查找，有则直接返回，没有才读取二进制数据加载" ID="80636a4572443fe2e11fcfa7e18f4cd1" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="安全性" ID="9a7f73ec191650b1ba9409fc15663cad" STYLE="fork">
          <node TEXT="防止篡改" ID="0cae49363399f22607e4c8434a7ffae0" STYLE="fork"/>
          <node TEXT="防止重复加载" ID="66322c05860965f3aa22c7caf528a6ed" STYLE="fork"/>
        </node>
        <node TEXT="应用" ID="a54bc66a3c066cbf3fa447f18067b4a3" STYLE="fork">
          <node TEXT="tomcat中，不同版本的同一个类，需要自定义加载器实现，破坏双亲委派和重复加载" ID="8bc955987c8bea274e1510200dc9245c" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="内存结构" ID="e69a3b18ffc7ff6b3c4de493884b32c0" STYLE="bubble" POSITION="right">
      <node TEXT="堆" ID="e1f4649adb036b0a16bc3faaf7e89415" STYLE="fork">
        <node TEXT="内容" ID="1779434e28a342f47a331d670b6565b3" STYLE="fork">
          <node TEXT="新生代(1)" ID="37762316bf1f3c073eac961283c5d0b8" STYLE="fork">
            <node TEXT="eden(8)" ID="2c14b5a314c0f890311829ef3c4c41ff" STYLE="fork"/>
            <node TEXT="survivor to(1)" ID="6b4b388c80054ac4aabc1665e8da4fa8" STYLE="fork"/>
            <node TEXT="survivor from(1)" ID="48ade0471e1a8a0e8d926e978abb6fc5" STYLE="fork"/>
          </node>
          <node TEXT="老年代(2)" ID="96c161306dcd8be63afe234e472a53a2" STYLE="fork"/>
        </node>
        <node TEXT="描述" ID="29fc44653e95cad1b612bc5b32baf952" STYLE="fork">
          <node TEXT="存放所有的对象实例" ID="c81f548a593fa1bf06b32f73c8fa7752" STYLE="fork"/>
        </node>
        <node TEXT="OOM的异常触发点" ID="45fb3b9cef31e7d4ad192136b8e093e3" STYLE="fork"/>
      </node>
      <node TEXT="方法区(直接内存)" ID="d8e34fad288296d75d31d4473507408b" STYLE="fork">
        <node TEXT="类信息" ID="09f4be8f2de1c2727bf93bae0e85b9af" STYLE="fork"/>
        <node TEXT="常量" ID="5bcdc66af60d799fff5ef68f2d329877" STYLE="fork"/>
        <node TEXT="静态变量" ID="38f12d0e49f48f916f71a4cbfecde5eb" STYLE="fork"/>
      </node>
      <node TEXT="栈" ID="4afed7519e836985268800bdf084bc5e" STYLE="fork">
        <node TEXT="栈帧" ID="765e0e81fca4f9de61ca00f2180e70d9" STYLE="fork">
          <node TEXT="局部变量表" ID="f92b9f1a21d6c05e5ae258942f7d2c1d" STYLE="fork">
            <node TEXT="slot(32位)" ID="17cb6901e7e29066bb37b4b2f1d6f8a7" STYLE="fork"/>
          </node>
          <node TEXT="操作栈" ID="1e7e2275ac3b8250bf000b09844c20b9" STYLE="fork"/>
          <node TEXT="动态链接" ID="de12e5e1ee6d05f78403f914c3546c23" STYLE="fork"/>
          <node TEXT="方法出口" ID="62cd0e58024d9e81b5f74c0f469a27d3" STYLE="fork"/>
        </node>
        <node TEXT="一个方法对应一个栈帧，调用是入栈，结束是出栈" ID="9e8cf121c3848ae07f359d1cc02894c1" STYLE="fork"/>
        <node TEXT="异常" ID="c06499815cec7cd850617abc792dae51" STYLE="fork">
          <node TEXT="栈帧存放超过深度，StackOverFlowError" ID="d972ec02752da9368e5e1bee2d70a243" STYLE="fork"/>
          <node TEXT="扩展无法申请足够内存，OOM" ID="5dfdd986047048eae64b9dd018a6b8fc" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="程序计数器" ID="c7615ead99c1f42d4aa355b202c6be79" STYLE="fork">
        <node TEXT="存储字节码指令" ID="4fd3f2a2808a2236ce60b614f79cd3ac" STYLE="fork"/>
        <node TEXT="唯一没有OOM的地方" ID="8b6e7e34fa0cf6de74d0d22ba72c10cd" STYLE="fork"/>
      </node>
      <node TEXT="本地方法栈" ID="25ef20ffdb4c305dbeede1131b844761" STYLE="fork">
        <node TEXT="Native方法执行的栈(如C语言实现的方法)" ID="9d7de80d3247079e67be91487ca1e4d6" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="垃圾收集" ID="3a482964a47184945e6d0d3aa1d94215" STYLE="bubble" POSITION="right">
      <node TEXT="对象存活判断" ID="0b0d100b57fc5024121598ec8259ecb3" STYLE="fork">
        <node TEXT="引用计数法" ID="e0d845dd6f4de0e4674f599a68bdcd50" STYLE="fork">
          <node TEXT="循环引用，导致无法释放内存" ID="7ccbedd51151c68e5afb84da816ea209" STYLE="fork"/>
        </node>
        <node TEXT="可达性分析" ID="00a726d94d3e637905c008c8fa069ffe" STYLE="fork">
          <node TEXT="从GC root向下搜索的引用链" ID="1f69da121381ef2f48bffda7d9961252" STYLE="fork"/>
          <node TEXT="GC root" ID="c51accf8b60512272fc2d56fdf6adb26" STYLE="fork">
            <node TEXT="栈中引用对象" ID="94f507c5b19686d2ecd8d435524856bd" STYLE="fork"/>
            <node TEXT="静态属性实体引用对象" ID="e77c78a78ff9cc6fcbd938537517b7be" STYLE="fork"/>
            <node TEXT="常量引用对象" ID="fa5efe81b2f0c8e00e80064090659dcd" STYLE="fork"/>
            <node TEXT="本地方法栈中引用对象" ID="e61f1e2fbca827742a885566c1d0feec" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="算法" ID="1bd53492d129db3a1f824d3c11d21041" STYLE="fork">
        <node TEXT="标记清除算法" ID="267caac7002c1a732b60d2e726744dfb" STYLE="fork">
          <node TEXT="大量内存碎片" ID="ff907e24f6faf62785c9b0b29d4b811e" STYLE="fork"/>
        </node>
        <node TEXT="复制算法" ID="fc36ddd9975c96c12c6d2a6d28e7429d" STYLE="fork">
          <node TEXT="效率高，内存利用率不高" ID="82f1a72ad1651871b5ec44b6c8cb840c" STYLE="fork"/>
        </node>
        <node TEXT="标记压缩算法" ID="89809652195a45716c9b6ca2bf46bb22" STYLE="fork">
          <node TEXT="效率低，内存利用率高" ID="f6bcc752719eef4d9f9204dbd77b3202" STYLE="fork"/>
        </node>
        <node TEXT="分代收集算法" ID="1df359bd4afca90fbdf71404db6ea5a4" STYLE="fork">
          <node TEXT="suvivor 用复制算法" ID="d7ab5ae3e962132c38cbeed6bb9fd339" STYLE="fork">
            <node TEXT="存活率低" ID="86daa68e121c94d64794ced6ce6b31ad" STYLE="fork"/>
          </node>
          <node TEXT="老年代用标记压缩算法" ID="264b9b9b8192197bb759ceb5ca08329e" STYLE="fork">
            <node TEXT="存活率高，存活率达到15则入老年代" ID="7df4c7503923f439dfb027ca4c79eee8" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="收集器" ID="05306b321f1adc644a6eef96add5e099" STYLE="fork">
        <node TEXT="Serial收集器" ID="33ccaac8cc8ca49b36e2d2cbc824a91b" STYLE="fork">
          <node TEXT="优点：古老，稳定效率高" ID="4ed0c4eeb93b13c1d021f24f7ecca93b" STYLE="fork"/>
          <node TEXT="缺点：STW时间过长" ID="b6d3fcfcc6c80a0e6f5f66ae939b67dc" STYLE="fork"/>
        </node>
        <node TEXT="Parallel收集器" ID="96807b965ef8caa81044b4c4f50a78cf" STYLE="fork">
          <node TEXT="关注吞吐量，停顿时间，可配置" ID="84a27075e9cb96d8efd7d79353e67dc2" STYLE="fork"/>
          <node TEXT="老年代串行" ID="423883e3efd2246d27004e5caadc95f5" STYLE="fork"/>
        </node>
        <node TEXT="Parallel Old 收集器" ID="ccee74d67ee95659a92e29ec4f977e88" STYLE="fork">
          <node TEXT="老年代并行" ID="6458f58899d3d476e692413e19c47175" STYLE="fork"/>
        </node>
        <node TEXT="CMS收集器" ID="d76802baab628b01ceec89aefe5da5c5" STYLE="fork">
          <node TEXT="目标：最短停顿时间" ID="9e50b4ef16264fd48c3079b79faeb197" STYLE="fork"/>
          <node TEXT="老年代算法，使用标记清除，新生代还是用ParNew" ID="171b0603cd8dca4bee042e602d7e0951" STYLE="fork"/>
          <node TEXT="过程" ID="56adae73bdcd036409aadddacf3f0e33" STYLE="fork">
            <node TEXT="初始标记" ID="b980001e9fea9b187720a530ca477aca" STYLE="fork">
              <node TEXT="GC root直接关联对象" ID="d244ed5da26a1ecbab0fda360033350f" STYLE="fork"/>
              <node TEXT="STW" ID="5ca80ee9ce4eb8ad2d0384bcdb71ba2b" STYLE="fork"/>
            </node>
            <node TEXT="并发标记" ID="85fb49a442e7f424f127327459df9803" STYLE="fork">
              <node TEXT="无STW" ID="c0a9f8f8e44fe7b86e939c15ec57d42b" STYLE="fork"/>
            </node>
            <node TEXT="重新标记" ID="f90e4ca3f79ea9e457347e8d48b87f79" STYLE="fork">
              <node TEXT="STW, 纠正" ID="8101d9f5f9ba02e5ca054f4dd3c51016" STYLE="fork"/>
            </node>
            <node TEXT="并发清除" ID="703e449c96fd04b5b8db5472fbedfcdb" STYLE="fork">
              <node TEXT="无STW" ID="3f3f42adeb6a0ebcf0bc07b1ca4436f2" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="G1收集器" ID="7bfa0132080ea697a4c882220931f46f" STYLE="fork">
          <node TEXT="采用标记整理算法，建立可预测的时间停顿模型" ID="83f19db4ad0aeae9b46635c313ef6163" STYLE="fork"/>
          <node TEXT="内存不再是物理上存在隔离的新生代和老年代" ID="e1401515f2cdb1cee046996d8c1e8442" STYLE="fork"/>
          <node TEXT="过程" ID="9ca4b4062939c544ffc1c51c97d238ca" STYLE="fork">
            <node TEXT="初始标记" ID="9ce4e2eb5ae6f9c4a084a6ab79456954" STYLE="fork">
              <node TEXT="STW" ID="002d426967feca69cea19f290ae41c0e" STYLE="fork"/>
            </node>
            <node TEXT="并发标记" ID="650a66259e1a61d2523aa1181874ec68" STYLE="fork"/>
            <node TEXT="最终标记" ID="3b02d2c7478b7e6e5c7590c818ea8180" STYLE="fork"/>
            <node TEXT="筛选回收(根据优先队列，控制回收时间)" ID="83c78d61586146838d386e0594bf2bfb" STYLE="fork"/>
          </node>
          <node TEXT="分类" ID="2619244c9504218f5acacd1415455ebf" STYLE="fork">
            <node TEXT="young gc" ID="84db1df886d9a661e78e7eab0d718346" STYLE="fork">
              <node TEXT="Eden区满" ID="44088386a390401a3758e332882149a0" STYLE="fork"/>
            </node>
            <node TEXT="mixed gc" ID="47ff559187a97fb9aa2fe3f32e0eedbd" STYLE="fork">
              <node TEXT="老年代占比到配置值，回收新生代和部分老年代、大对象" ID="5b5e58404a57702debcd7f9d413c51e0" STYLE="fork"/>
            </node>
            <node TEXT="full gc" ID="896044d1e44193a0e229cf8171f08f74" STYLE="fork">
              <node TEXT="mixed gc时复制算法无法找到空闲的空间" ID="2d0483a880636ce89707dfd17c930361" STYLE="fork"/>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node TEXT="调优" ID="6b0a6064c809cb5bb064078cc611e97e" STYLE="bubble" POSITION="right">
      <node TEXT="堆" ID="4b8ccc361c60008d7fecac2a9dfb1e3c" STYLE="fork">
        <node TEXT="JVM命令" ID="8c3a073e53065fe2785e9a06f58e22c9" STYLE="fork">
          <node TEXT="查看堆内存" ID="69f77771c86405a3b2cc9f9868f9c2ed" STYLE="fork">
            <node TEXT="jmap -heap pid" ID="1bfc2e489f065e39b79f38e15bc53ca5" STYLE="fork"/>
          </node>
          <node TEXT="查看对象大小" ID="5ed3ccec5290bd5311dfd760e5290fe6" STYLE="fork">
            <node TEXT="jmap -histo:live pid" ID="d4244461c0d36362fc29e73dea7a2d76" STYLE="fork"/>
          </node>
          <node TEXT="数据导出" ID="414b7f6ee1c283bebca56ac5889afbb0" STYLE="fork">
            <node TEXT="jmap -dump:format=b,file=file.phrof pid" ID="4ab86604a7a16039bc1efa1ea1ba541e" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="MAT工具" ID="0dca30c66a429cb91d2c6b9f81c2bed2" STYLE="fork">
          <node TEXT="自动分析内存大的点" ID="80967a7a7e677f0ba30eddd5c8eba9e6" STYLE="fork"/>
          <node TEXT="查看各个类型的占用大小" ID="1000421c4b19efefc226a27c7562f6f8" STYLE="fork"/>
          <node TEXT="查看主动引用和被引用的关系" ID="93ee7465d85343432465b9fe46d38db5" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="堆外内存" ID="6094381d3d2f5847175c3ede59ee56f3" STYLE="fork">
        <node TEXT="栈数量是否太多" ID="760d72943f1c204fcdeef613b850e462" STYLE="fork">
          <node TEXT="jvm线程大小设置" ID="46bc1badd6a525ee6df2237254b43780" STYLE="fork"/>
        </node>
        <node TEXT="方法区是否OOM" ID="58c5f9c4db35c0b1034d704468a01596" STYLE="fork"/>
        <node TEXT="直接内存" ID="74e8c3fdc785be2006b1d6132d12f4a7" STYLE="fork">
          <node TEXT="jcmd 0 VM.native_memory" ID="4101239c02173431728494facf758736" STYLE="fork"/>
        </node>
        <node TEXT="linux 进程内存管理" ID="554421e54b2082a3579863db316752a0" STYLE="fork">
          <node TEXT="cat proc/{pid}/smaps" ID="eb849365b818c27b03362651ea7dae32" STYLE="fork"/>
          <node TEXT="找到占用内存大的地址区间" ID="d2566b422c460a9effdfe576f49f9697" STYLE="fork"/>
          <node TEXT="用gdb工具查找这个内存的内容" ID="7aad01a5da96de58a37d81465007ca20" STYLE="fork"/>
        </node>
      </node>
    </node>
  </node>
</map>

<map>
  <node ID="root" TEXT="JAVA多线程并发知识梳理">
    <node TEXT="基础知识" ID="a03f3222f815e3f6a8bb2304af454f51" STYLE="bubble" POSITION="right">
      <node TEXT="并发编程三要素" ID="b34e00b987adf72a5bdccd1ec01de98e" STYLE="fork">
        <node TEXT="原子性" ID="db3e043f8514bebcc9d8b65b069e4de0" STYLE="fork"/>
        <node TEXT="有序性" ID="4c9e496346678eb2420b8eb52a18b994" STYLE="fork"/>
        <node TEXT="可见性" ID="7d9f6cde74a541eba76c26a258a08d55" STYLE="fork"/>
      </node>
      <node TEXT="线程五大状态" ID="cf8fd18b8f92ae3b317aacf7d619460f" STYLE="fork">
        <node TEXT="创建" ID="5c22d5a4953b5a1b46407eb3d0de70b1" STYLE="fork">
          <node TEXT="继承Thread" ID="fbd1a25258c3e3accfc6d950fc206401" STYLE="fork"/>
          <node TEXT="实现Runnable" ID="c0f4b704510d75c2a306b0658b23006f" STYLE="fork"/>
          <node TEXT="Callable" ID="4cd0bf62594351baec406b7c0712264b" STYLE="fork"/>
        </node>
        <node TEXT="就绪" ID="faf35f0feb01a928680e85c488727c90" STYLE="fork">
          <node TEXT="时间片等待" ID="63448d06e95a32b1fa6a7d7011b89464" STYLE="fork"/>
          <node TEXT="资源等待" ID="d9f53fd429488247d660f51e944ac27d" STYLE="fork"/>
          <node TEXT="手动中断" ID="b79dc1b34c197bb343d5a511df576b36" STYLE="fork"/>
        </node>
        <node TEXT="运行" ID="0b7d73ca975f1f4881583b9ea7af24b3" STYLE="fork">
          <node TEXT="获得时间、资源和处理器" ID="64346507f478aa931b3aa2011b324452" STYLE="fork"/>
        </node>
        <node TEXT="阻塞" ID="b5ca5a5f1a187ff89e87405f0d0dba4c" STYLE="fork"/>
        <node TEXT="终止" ID="e157d07a940fcf33a961ae05abbabe95" STYLE="fork">
          <node TEXT="正常退出" ID="6e613fa528a7d487fdf4b41f690ae477" STYLE="fork"/>
          <node TEXT="异常终止" ID="8b5c7156f2b03d6ebab9cebfc1868477" STYLE="fork"/>
          <node TEXT="手动退出" ID="9d0045b80adca509e8ff06ec1429be14" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="悲观锁和乐观锁" ID="b47fae0888be9814d172351f7eb614fd" STYLE="fork"/>
      <node TEXT="线程之间的协作" ID="6400405f359312f07822de25d321ec89" STYLE="fork">
        <node TEXT="sleep" ID="c88a0c63ec1d61a60dcdf7d688a363e7" STYLE="fork">
          <node TEXT="不释放锁，释放cpu资源" ID="bcff1aee9a6a13f44633f63fa2b697ab" STYLE="fork"/>
        </node>
        <node TEXT="wait" ID="d437bdd354e5e98586050ec69d1132e1" STYLE="fork">
          <node TEXT="释放锁，进入等待队列，通常和synchronized一起使用和一定的condition" ID="6491b150b9f12ab508c7c485579ff29d" STYLE="fork"/>
        </node>
        <node TEXT="notify" ID="bdfd830e0b89f989d4005b54315989c3" STYLE="fork">
          <node TEXT="与wait搭配使用" ID="243d8f0ec4313b6060d4686fa1c6e8bc" STYLE="fork"/>
        </node>
        <node TEXT="join" ID="98a1f3ec8a9fd162262cc70908d730fb" STYLE="fork">
          <node TEXT="当前线程进入等待状态" ID="8bc52675c83e3700e798444d1c763617" STYLE="fork"/>
        </node>
        <node TEXT="yield" ID="91c2fc56b47bd9b066c68d606164e346" STYLE="fork">
          <node TEXT="退让，变成就绪状态一起竞争" ID="3f7dd77e2b5cc3fa7baaa56b8f28cfc8" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="synchronized关键字" ID="1651b22c2f7a6b297bd3146c52286cea" STYLE="fork">
        <node TEXT="作用域" ID="454e61612ac4c11c921f6c4531861367" STYLE="fork">
          <node TEXT="修饰类" ID="16c62babd41a5ef44a1c026eb3815d35" STYLE="fork"/>
          <node TEXT="修饰静态方法" ID="f1c7a60804cd44b1c003ac7f061323b4" STYLE="fork"/>
          <node TEXT="修饰方法" ID="8f40be064df4a6eaeb398a0db9b7b0fd" STYLE="fork"/>
          <node TEXT="修饰对象" ID="d09739bd6549a265a55ee5bbdc071170" STYLE="fork"/>
          <node TEXT="修饰代码块" ID="c456b7e6687b8dbef499a962e3f6d8a7" STYLE="fork"/>
        </node>
        <node TEXT="本质" ID="193c419614b468f5297ba2edac2e3306" STYLE="fork">
          <node TEXT="对象上标志持有该锁的线程" ID="22c8eef3b3ca512a2696c713cebd1cfb" STYLE="fork"/>
          <node TEXT="竞争的线程维护在一个列表中" ID="3cae868926613dbcf509c2a92a0e2b9a" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="CAS" ID="490ca0f9630d58279f645c4905cc513f" STYLE="fork">
        <node TEXT="乐观锁的实现方式" ID="7303295af8db82241d9489f0ab3aaa37" STYLE="fork"/>
        <node TEXT="无法避免ABA的问题" ID="de33d37beb60c81caf817f1cf648a4b3" STYLE="fork"/>
      </node>
      <node TEXT="并发核心概念" ID="bcb0d5c5f96b7295ac658b283201e38d" STYLE="fork">
        <node TEXT="并发与并行" ID="6d2347e8466e8d6eb7657cbcff124389" STYLE="fork">
          <node TEXT="并发是通过时间片轮转的" ID="e6aaea2279fa7e24f9c079d1e9214a6f" STYLE="fork"/>
          <node TEXT="并行是多个处理核心互不干扰" ID="73ac897933fe7fb6758fcb9b65ab075d" STYLE="fork"/>
        </node>
        <node TEXT="同步问题" ID="f49f3f85e8a6ea3a2d14cb30dc49c4c1" STYLE="fork">
          <node TEXT="执行顺序" ID="7e85bf03875b0d298f0480a5a3b13579" STYLE="fork"/>
          <node TEXT="共享变量" ID="435bf1fd16cc29a85466e0e1f2f03cb4" STYLE="fork"/>
          <node TEXT="代码块" ID="a52b015b8ddadc29606a94db88f982eb" STYLE="fork"/>
          <node TEXT="死锁" ID="f1429e5eaffd53896b242b58947f8207" STYLE="fork">
            <node TEXT="占用内存，不占用cpu" ID="b674e4330e3162673a15694f16327b42" STYLE="fork"/>
          </node>
          <node TEXT="活锁" ID="c3b9d775dca1d18b2357b2eb9169fcb7" STYLE="fork">
            <node TEXT="占用内存，占用cpu" ID="b83220d2add7e4e0fd97a5030c858727" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="避免死锁" ID="81241e939a1402cf690f481f855ff3b4" STYLE="fork">
          <node TEXT="忽略" ID="0f4c0b23f9cc80091a5a4acced180857" STYLE="fork">
            <node TEXT="如数据库的事务等待超时" ID="b95d80adf554459d810d2774e5ece130" STYLE="fork"/>
          </node>
          <node TEXT="检测" ID="4ff2d97c3cf0505afdfe19d97b40849a" STYLE="fork">
            <node TEXT="共享变量标记，redis缓存" ID="9639ce3e55a7c0770e520063bea078dc" STYLE="fork"/>
          </node>
          <node TEXT="预防" ID="8f8a61b5b5fd9201ff46a948d6152730" STYLE="fork">
            <node TEXT="如修改数据库行提前对范围加锁" ID="e70e804fa059deb5867808cc38d7d940" STYLE="fork"/>
          </node>
          <node TEXT="规避" ID="362f1ca20f493a1e87729314833b0ef0" STYLE="fork">
            <node TEXT="银行家算法" ID="1420bee764b77f9594033d90d0ec5be0" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="JMM(JAVA内存模型)" ID="c6c374d591c01da290ac23f9853a66e0" STYLE="fork">
          <node TEXT="内存可见性问题" ID="fdb2692d13f0ac4aec1788b10d8ffd4f" STYLE="fork">
            <node TEXT="每个线程拥有自己独立的内存副本，操作完成之后刷入主内存" ID="aae6881949298e94c846ce7f08d2f18a" STYLE="fork"/>
            <node TEXT="happen-before原则" ID="c04ef592d5bb78a48219c3c36ddc3029" STYLE="fork">
              <node TEXT="volatile关键字" ID="4dc5813bbea33b131c5f1acbbe325fb1" STYLE="fork"/>
              <node TEXT="Unsafe类" ID="8aec5c32b40b414580a2f3bd92569a82" STYLE="fork"/>
              <node TEXT="final变量" ID="8fa9bdc96db9398a170cb4b5ee30020e" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="重排序" ID="3dfcf04e7f482f68cbef949e9120e105" STYLE="fork">
            <node TEXT="多个线程之间对共享变量的读和写顺序是不确定的" ID="c8eb14ad38706f06b16248f2a750f9fb" STYLE="fork"/>
            <node TEXT="类型" ID="2caf9859f6e0664c106bc02e1c400a0d" STYLE="fork">
              <node TEXT="编译器重排序" ID="90a4e4b1d4dcdb5ab23f0fa7525aaa6f" STYLE="fork">
                <node TEXT="单线程不影响最终结果" ID="9487cee31ac4f0f22d00a39b190e7f48" STYLE="fork"/>
              </node>
              <node TEXT="CPU指令重排序" ID="98474e05120fccd2178dc2d2a2dfb2f3" STYLE="fork">
                <node TEXT="单线程多条语句没有依赖性，cpu更改顺序" ID="c08acbc48e0175215232b44cc114ed76" STYLE="fork"/>
              </node>
              <node TEXT="内存重排序" ID="2eaa945aa2c9a858e49270f0be2ac43b" STYLE="fork">
                <node TEXT="cpu缓冲区延时写入，多线程可见性问题" ID="83b6d733af689f761f3f5e7176a86b9c" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="解决方式" ID="021db910c43be77d1fcd6a938bb334ee" STYLE="fork">
              <node TEXT="Unsafe类" ID="1f3b2efc8a819aa14706f4b696c48742" STYLE="fork">
                <node TEXT="提供方法，保证在某个操作前后的读和写操作都完成" ID="059f4953f3165ea099b8bc719d331cde" STYLE="fork"/>
              </node>
              <node TEXT="volatile关键字" ID="60f0192c3ca49ec6173fe30afa0c1295" STYLE="fork">
                <node TEXT="64位写入的原子性" ID="7ecf1c8e0a3268f55a26d3bcc753c68e" STYLE="fork"/>
                <node TEXT="禁止指令重排" ID="a411a4415d3d290fab1f21dc7adc1aa1" STYLE="fork"/>
                <node TEXT="内存可见性" ID="c89e6ebfd346b48e7d96094943c3d0fd" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
        <node TEXT="JUC并发容器" ID="4d6f4b1f810b8371db2b823a420587b2" STYLE="fork">
          <node TEXT="ArrayBlockingQueue" ID="679d652eeb9c6ec32441e4fdd8f9c17e" STYLE="fork">
            <node TEXT="数组类型的环形队列，put和take互斥" ID="3d0340dd5141000169cf3e7f8dd939dc" STYLE="fork"/>
          </node>
          <node TEXT="LinkedBlockingQueue" ID="5a42cd7de7d53c119ad28547eddf3d7f" STYLE="fork">
            <node TEXT="双向链表，先进后出，读之间，写之间互斥，读和写不互斥" ID="5f2f7495394822140f21501716b159cf" STYLE="fork"/>
          </node>
          <node TEXT="PriorityBlockingQueue" ID="bfca8bebc7bbf5de326b56989df6cde8" STYLE="fork">
            <node TEXT="先进先出，优先级队列（堆），没有非满条件" ID="937e8e4a0094284fdfb67ddeb7016bd6" STYLE="fork"/>
          </node>
          <node TEXT="DelayQueue" ID="810485c7942d311f42e8875e26212311" STYLE="fork">
            <node TEXT="延时时间从小到大排序，就是优先级队列上加了延时时间，取数和放数都要考虑延时时间" ID="bbf9c751b61472ca56aa3400af9ba859" STYLE="fork"/>
          </node>
          <node TEXT="SynchronousQueue" ID="c8997a1b4fb41acb118a59db2488c7f1" STYLE="fork">
            <node TEXT="没有容量，单进单出，顺序执行" ID="882d5c2177b9e6e1cedce376e44fe5f5" STYLE="fork"/>
          </node>
          <node TEXT="LinkedBlockingDeque" ID="43bb00a601ac4e7850d830ead19e7af1" STYLE="fork">
            <node TEXT="与ArrayBlockingQueue相同，只是他是双端队列" ID="3a483e1fc1090fd65cd0e0fd9fb75256" STYLE="fork"/>
          </node>
          <node TEXT="CopyOnWrite" ID="f1505f566e495ec12fb96ac1936f55cd" STYLE="fork">
            <node TEXT="复制写+乐观锁或者悲观锁" ID="5a42a8746cda8fd3d66eb3722fcf4323" STYLE="fork"/>
          </node>
          <node TEXT="ConcurrentLinkedQueue" ID="03461f48bd165568f4977bbf0116c371" STYLE="fork">
            <node TEXT="AQS" ID="98233d1f6c007a14eae2a6dd49d0aff6" STYLE="fork"/>
            <node TEXT="CAS" ID="2ace2522c7214b26c819d9351dcb5626" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="JUC同步工具类" ID="9a6d577600a3b38574bd4c520463288f" STYLE="fork">
          <node TEXT="Semaphore" ID="f412cf0590ff4e95727922e901206655" STYLE="fork">
            <node TEXT="设置资源数，让多线程竞争和释放" ID="e3d9d2e9e78717d9e8c1c65d91bceeb8" STYLE="fork"/>
          </node>
          <node TEXT="CountDownLatch" ID="bcab0bc6c3635176a92ad29efad629c8" STYLE="fork">
            <node TEXT="await的线程必须等待countDownLatch中的state=0才会被唤醒" ID="1d630bdddee1b5476d2ceee11e6ec7bf" STYLE="fork"/>
          </node>
          <node TEXT="CyclicBarrier" ID="f3da5730afb2f88432931de6b6922a0e" STYLE="fork">
            <node TEXT="设置一定的数值，await等待指定数值的线程，才可以开始运行" ID="f424a8cfc18fa4ce75d1c7ffc3b89610" STYLE="fork"/>
          </node>
          <node TEXT="Exchanger" ID="b8fa66ed7fb2bfe8776ca9cea53d0ee6" STYLE="fork">
            <node TEXT="exchange向对方交换数据，并返回对方线程传递的数据" ID="4918391ad8520e1a4525816ffade7981" STYLE="fork"/>
          </node>
          <node TEXT="Phaser" ID="f2ca2a79daa0cd6ce8fdb99d747780ce" STYLE="fork">
            <node TEXT="同时支持CountDownLatch和CyclicBarrier的功能" ID="8ce33a72605b5e08d41486e9eb978343" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="JUC原子变量" ID="6941091206f648558bc194fc49add086" STYLE="fork">
          <node TEXT="通过自旋CAS实现，没有阻塞操作" ID="1f6bfbf2ad8f77d8182c18e5b07aea6e" STYLE="fork"/>
          <node TEXT="自旋的加锁需要在多核CPU中使用" ID="4a47106993fba962a7c3cdfed3a8288c" STYLE="fork"/>
        </node>
        <node TEXT="锁实现的基本原理" ID="e2a56304c9bd4367b336f49e5b242cff" STYLE="fork">
          <node TEXT="state" ID="460f4dd9dd3861ac346a01adee48928e" STYLE="fork">
            <node TEXT="标记锁的状态，CAS保证线程安全" ID="fee38688f08431c8a79e2e0fbe4118ef" STYLE="fork"/>
          </node>
          <node TEXT="需要标记当前持有锁的线程" ID="f90560c447ca5103602e18e4a5264f4a" STYLE="fork"/>
          <node TEXT="需要底层支持线程的唤醒和阻塞操作" ID="16db4a18a26fe1982bd1d05376801e92" STYLE="fork"/>
          <node TEXT="需要有个线程数组维持当前竞争锁的阻塞线程，CAS保证线程安全" ID="ec5a0ccb064192054cd1ad50087f7919" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="线程池" ID="d1359262fae8d44f4b63a83ffa3151d7" STYLE="fork">
        <node TEXT="基本问题" ID="c157673c83219a3f6009a627e0f31029" STYLE="fork">
          <node TEXT="队列长度，无限制的话内存耗尽，有限制超出后的解决方案" ID="d5aff11a67b180cd78c3d3fe01b7256b" STYLE="fork"/>
          <node TEXT="线程池线程个数，固定还是动态的" ID="3a1d51b8084ed76dbc75709842b60ec1" STYLE="fork"/>
          <node TEXT="新提交的线程如何处理，新线程运行，还是放入队列" ID="4975282581c24286f98c7a7989b92619" STYLE="fork"/>
          <node TEXT="没有任务，休眠还是阻塞，阻塞的话需要有唤醒机制" ID="2414451466a68ad4b60321e0fa6742dd" STYLE="fork"/>
        </node>
        <node TEXT="ThreadPoolExector" ID="56d74cf999206860d958d04d1d97ee9e" STYLE="fork">
          <node TEXT="corePoolSize：在线程池中始终维护的线程个数。" ID="694f4a9750a7eb697ebe82084714d847" STYLE="fork"/>
          <node TEXT="maxPoolSize：在corePooSize已满、队列也满的情况下，扩充线程至此值。" ID="d8f21d387c2cbabe1f75390629dbffc1" STYLE="fork"/>
          <node TEXT="KeepAliveTime/TimeUnit：maxPoolSize 中的空闲线程，销毁所需要的时间，总线程数收缩回corePoolSize。" ID="15529f70bbeb3d244ac1011fc16c7d87" STYLE="fork"/>
          <node TEXT="blockingQueue：线程池所用的队列类型。" ID="d3de3da74ef52e6739e1ba3fea65cba2" STYLE="fork"/>
          <node TEXT="threadFactory：线程创建工厂，可以自定义，有默认值Executors.defaultThreadFactory() 。" ID="65099640c7629b148fa1fba2bdea1715" STYLE="fork"/>
          <node TEXT="RejectedExecutionHandler：corePoolSize已满，队列已满，maxPoolSize 已满，最后的拒绝策略。" ID="896b9f6fc37256d2e51accb3d8da5622" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="异步编程" ID="298122f4bb62802fb1e29c754a2ba450" STYLE="fork">
        <node TEXT="CompletableFuture" ID="7880297e7d63ba0968e629debc707332" STYLE="fork">
          <node TEXT="作用" ID="4ef251adf216e08f1f82ca33c1829a2a" STYLE="fork">
            <node TEXT="支持等待返回值的一部调用" ID="35368865c26d155e7f5dc63b1f7197c9" STYLE="fork"/>
            <node TEXT="支持设置回调方法和回调方法返回值" ID="a909c738f98a03cf5247bacab87b5a5d" STYLE="fork"/>
            <node TEXT="支持多个异步线程嵌套" ID="4db2cac762e9d9818d06ef6d53092761" STYLE="fork"/>
          </node>
          <node TEXT="支持的任务类型" ID="66e42bbe438fe2aaeea55d0a00622ff4" STYLE="fork">
            <node TEXT="Runnable" ID="d8c9d7662a6bab6c0c4aa108a901ebfe" STYLE="fork"/>
            <node TEXT="Consumer" ID="fae4cfe63499cecede4db5f541cfdebe" STYLE="fork"/>
            <node TEXT="Supplier" ID="10e5b5d9300c5924d46c5b788de8ccc2" STYLE="fork"/>
            <node TEXT="Function" ID="5ad76ad5b7a4efab94b97746c7a242f5" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
  </node>
</map>
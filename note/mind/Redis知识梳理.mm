
<map>
  <node ID="root" TEXT="Redis知识梳理">
    <node TEXT="基本类型" ID="b4f1d2d2d19090f5691ddeb74b21793d" STYLE="bubble" POSITION="right">
      <node TEXT="String" ID="1ceef3979513369a2faf33a243b09a2c" STYLE="fork">
        <node TEXT="最大能存512MB，可以存数字，对字符串和数字都能操作" ID="aa2fa7b297cc6ba7c12369bcb6d4bbb5" STYLE="fork"/>
      </node>
      <node TEXT="List" ID="ce8ae650af5a46ab1068a2aed87f306f" STYLE="fork">
        <node TEXT="底层是双向链表，两头操作性能高，中间操作低" ID="ea235905fdf1e4229b1dc6548fb4c293" STYLE="fork"/>
      </node>
      <node TEXT="Set" ID="6a4cf15755779c0f29f49214d0fe302c" STYLE="fork">
        <node TEXT="无需不重复，底层是value为null的hash表或者inset" ID="5032a15c793ce19204ce62044a676308" STYLE="fork"/>
      </node>
      <node TEXT="Hash" ID="aecf8f66c4365f6149fb5460caa3064c" STYLE="fork">
        <node TEXT="和java hashMap一样，rehash有所不同" ID="6030cb3925183fadb22f428aee1f1aa9" STYLE="fork"/>
      </node>
      <node TEXT="Zset" ID="ff9f458a367b690e5d2718b968fb008f" STYLE="fork">
        <node TEXT="利用score来从小到大进行排序的无重复集合" ID="56a998bc75f22d1d9fd3fe66982b08db" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="底层数据结构" ID="03c8eca29efe4149e8f3cdac5468ea81" STYLE="bubble" POSITION="right">
      <node TEXT="通用结构" ID="db1cb3eb5b2eaff275de8dd1744d37b7" STYLE="fork">
        <node TEXT="" ID="3cedf593f2d7d30dfffc354945ae56ad" STYLE="fork"/>
      </node>
      <node TEXT="简单动态字符串(SDS)" ID="f5bb3475e6c701fa68d439aedbe28159" STYLE="fork">
        <node TEXT="构成" ID="5b2743bfdfdd933ab38be16d3af04dd2" STYLE="fork">
          <node TEXT="len：记录当前已使用的字节数（不包括&apos;\0&apos;），获取SDS长度的复杂度为O(1)（C 语言中获取字符串长度的时间复杂度为 O(N)）。此外，len值还避免了二进制安全与缓存区溢出的问题。" ID="a86f0e9563243e557a1c0bbb0a24122f" STYLE="fork"/>
          <node TEXT="alloc：记录当前字节数组总共分配的字节数量（不包括&apos;\0&apos;）。" ID="db80c41f0b82614e04984726534a7d72" STYLE="fork"/>
          <node TEXT="flags：标记当前字节数组的属性，是sdshdr8还是sdshdr16等，节省内存。" ID="e888a30f3b5fad10f0472609e812cfff" STYLE="fork"/>
          <node TEXT="buf：字节数组，用于保存字符串，包括结尾空白字符&apos;\0&apos;。" ID="ee6442f2bd35ee069a767ec2e4923f76" STYLE="fork"/>
        </node>
        <node TEXT="空间预分配" ID="f83b61df9049d3ed2e60809b60008cee" STYLE="fork">
          <node TEXT="如果对SDS进行修改之后，SDS的长度将小于1MB，那么程序分配和len属性同样大小的未使用空间。" ID="6753e4c5eed3d465108df6d81ddf6e52" STYLE="fork"/>
          <node TEXT="如果对SDS进行修改之后，SDS的长度将大于等于1MB，那么程序会分配1MB的未使用空间。" ID="0820f22793295340f34a273103bf083b" STYLE="fork"/>
        </node>
        <node TEXT="惰性释放" ID="9009d314aa46cc680fdbc3d758223d09" STYLE="fork">
          <node TEXT="字符串缩短操作不立即回收内存，而是free记录字节数等待将来使用" ID="402ab334aa70b52c352f8244bfdf10ba" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="列表" ID="bbff4008a4038e701deb16b171943804" STYLE="fork">
        <node TEXT="压缩列表(3.2版本前)" ID="166b7c8ee4950ffe8cd23713e3716894" STYLE="fork">
          <node TEXT="" ID="58c76db7de9e2a4bdfcd147f78b7f5d2" STYLE="fork"/>
          <node TEXT="节省内存，zlen有长度限制，但是列表变动引起的连锁更新问题是灾难的" ID="a32a6a1aefe18f64d4a922837546393e" STYLE="fork"/>
        </node>
        <node TEXT="双向链表" ID="e9b9d3621cd817891f3ebea7baa433c5" STYLE="fork">
          <node TEXT="" ID="92b5d2ca093ed85b5f8f60084b79c627" STYLE="fork"/>
          <node TEXT="内存碎片多，空间占用大" ID="1b8148f9733ef8e1cf1912ff208778a5" STYLE="fork"/>
        </node>
        <node TEXT="quickList" ID="b8727982ba32dbeb0b1b1d4328aa3aad" STYLE="fork">
          <node TEXT="" ID="2a9f30c029489ba3af17c7930da97e89" STYLE="fork"/>
          <node TEXT="拥有压缩列表和双向链表的优点" ID="66ce8ccb5a864d18453ecef91c3b2684" STYLE="fork"/>
        </node>
        <node TEXT="应用：阻塞队列" ID="90d44ff439a8e8be3aa59ff21b97722b" STYLE="fork"/>
      </node>
      <node TEXT="字典" ID="7f6338137b9f6561ee0072cef3a81929" STYLE="fork">
        <node TEXT="" ID="6c8cdcae915c229dbf49faa3b3eb487a" STYLE="fork"/>
        <node TEXT="与java HashMap很相似，唯一不同的是，扩容的rehash过程" ID="a51bc79438a028a6dad2ecad3bdf7d57" STYLE="fork"/>
        <node TEXT="h0往h2渐进式收缩/扩展hash，过程用rehashidx计数，完成后，h1和h0交换指针" ID="0613880011e45f028afb375655d09fc8" STYLE="fork"/>
      </node>
      <node TEXT="整数集合" ID="32850d5485211bb2746b3605f5a11c64" STYLE="fork">
        <node TEXT="不重复整数集合，且数量不多，从小到大排序" ID="538147d27965f3ce6d1ef49ec5a15f73" STYLE="fork"/>
      </node>
      <node TEXT="跳表" ID="a8b19c2d4ac2081153626b1876b348d6" STYLE="fork">
        <node TEXT="ZSet的底层实现" ID="b6327aa44d0d62926bba55e00578aff0" STYLE="fork"/>
        <node TEXT="" ID="ce2d5e1d0b4dfcff145e8ddcf417a329" STYLE="fork"/>
        <node TEXT="从顶层开始，每层的head按照sort的大小排序" ID="e4c9d21d38a9f4dd629ff033d673bcf6" STYLE="fork"/>
        <node TEXT="sort值相同的在同一栋楼房中" ID="b57b245d5f7f2519cc12418232e207dc" STYLE="fork"/>
        <node TEXT="为什么mysql索引不用跳表？" ID="09e4920c64d5761ba6e8089a09f88943" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="Redis高可用" ID="c328095fe06851c07f33f9431685b287" STYLE="bubble" POSITION="right">
      <node TEXT="主从复制" ID="4c21f9f01aaaed929bd7f03e8a068267" STYLE="fork">
        <node TEXT="高可用基石" ID="c11bc64254954684cf86aa5ce27cf525" STYLE="fork"/>
        <node TEXT="Master以写为主，Slave以读为主" ID="026cb34213abd73f2bf02d3991399ba0" STYLE="fork"/>
        <node TEXT="大体流程：SYNC-&gt;fork子线程(阻塞)-&gt;RDB快照(全量)-&gt;命令同步(增量)" ID="7391e4e4a687352e4002a6294b696756" STYLE="fork"/>
        <node TEXT="全量复制" ID="c90142948759cfc0c28e9dee81c7ccee" STYLE="fork">
          <node TEXT="RDB快照" ID="a32bda2885e1eda3def1d39d615f307f" STYLE="fork"/>
          <node TEXT="复制缓冲区(生成RDB期间的命令)" ID="9a8cba22c296a04176e0c18ea136df33" STYLE="fork"/>
        </node>
        <node TEXT="部分复制" ID="a35d949e65e1639c3bea3fbdfbe8608d" STYLE="fork">
          <node TEXT="主从维护推送/消费offset" ID="393f360a8eaaf24ca7387867f4b6577b" STYLE="fork"/>
          <node TEXT="复制积压缓冲区" ID="10539a3913cc18da49be3dc2e6109839" STYLE="fork">
            <node TEXT="主从offset差异部分" ID="5e523450cf597b2299179053b306ebb2" STYLE="fork"/>
            <node TEXT="超出大小只能全量复制" ID="e299b10d319b49a2858ece7812a4502a" STYLE="fork"/>
          </node>
          <node TEXT="主节点id，从节点标识同步的唯一？部分同步：全量同步" ID="76e2ab498235edbe8850b2b17f87d008" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="哨兵模式" ID="596fc142480a4b96d75d0702bb56ff4f" STYLE="fork">
        <node TEXT="保证主节点宕机后的高可用" ID="0d2c04b052cbbc65681cdbf830a7d003" STYLE="fork"/>
        <node TEXT="三个实例以上保证健壮性" ID="a09b8099e2fd371304095192a47ace38" STYLE="fork"/>
        <node TEXT="监控-&gt;故障通知确认-&gt;选举-&gt;故障转移-&gt;配置更新" ID="94502da6e25c0b44cc38ea81f4c431be" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="持久化" ID="d3dd01e87fe4bbc225a254a9a3616cc0" STYLE="bubble" POSITION="right">
      <node TEXT="RDB(快照)" ID="dfab6928195a6ce4877f6425224613bb" STYLE="fork">
        <node TEXT="间隔时间，自动触发" ID="1ba6f56ce310271e8b7f9bbe978dfe09" STYLE="fork"/>
        <node TEXT="主从复制，阻塞主线程" ID="e260cc4398fc8b48d78a13263c3ad993" STYLE="fork"/>
        <node TEXT="正常关闭，触发" ID="271694828edf941c0e62796d4de7db86" STYLE="fork"/>
        <node TEXT="有间隔性，丢失风险，二进制压缩，按内存小，恢复快" ID="f9fd449ac9ad3bbd041fa2bbc989d964" STYLE="fork"/>
      </node>
      <node TEXT="AOF(命令)" ID="ab871781fa7ee77f7a6311fac7dbcd33" STYLE="fork">
        <node TEXT="每秒备份" ID="48dd60b4b64bbaacc8a4f184bb595cd7" STYLE="fork"/>
        <node TEXT="每条备份" ID="95bcd14132b9e29218285e0512b973d5" STYLE="fork"/>
        <node TEXT="占内存大，恢复慢，丢失风险较低" ID="0c9aea8408c7f79401d3464daa0da279" STYLE="fork"/>
      </node>
      <node TEXT="淘汰策略" ID="4121f96d3cddc5be8d87971818018027" STYLE="fork">
        <node TEXT="TTL" ID="9bc6a2252b5a5762676b67e57adc587b" STYLE="fork"/>
        <node TEXT="Random" ID="d8c3543d2ded3e8336d9f30a33b96768" STYLE="fork"/>
        <node TEXT="LRU" ID="1aedf9152785a27116bc0b495c570317" STYLE="fork"/>
        <node TEXT="LFU" ID="43036c2e6f4958ad1e7b3b1a301d7fb8" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="事务与监控" ID="5497859a6c38dea5c8fc68257afcdbb1" STYLE="bubble" POSITION="right">
      <node TEXT="原子性" ID="d105bd02e36ab2ed3c261a4b212d9c96" STYLE="fork">
        <node TEXT="编译错误命令，满足原子性；运行错误，不满足原子性" ID="240df0d3270cff9b08418c2e2eabc14a" STYLE="fork"/>
      </node>
      <node TEXT="隔离性" ID="de332831d3f214debcae4b623b6930b2" STYLE="fork">
        <node TEXT="WATCH保证隔离性" ID="fa378081b94bfa85bddf8a48c7a6fb8a" STYLE="fork"/>
      </node>
      <node TEXT="持久性" ID="7e66d53bce862b76ad2dc702158f1d32" STYLE="fork">
        <node TEXT="RDB和AOF均不能满足" ID="e438490e0760459d199c17e800141311" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="击穿和雪崩" ID="dbbe333355975d0872241daf56920ef4" STYLE="bubble" POSITION="right">
      <node TEXT="穿透" ID="21825a48f1a7758b00c4880586ce1513" STYLE="fork">
        <node TEXT="故意找必须访问数据库的请求，进行攻击" ID="a946b2ef2b96a0a744df94113b381a93" STYLE="fork"/>
        <node TEXT="解决办法：布隆过滤器——redis位存储" ID="23d9eb6c581e126030883cdf08d31931" STYLE="fork"/>
      </node>
      <node TEXT="击穿" ID="395b1d7b28596158d882901e243f469c" STYLE="fork">
        <node TEXT="一个热点key，突然失效，数据库造成大量压力" ID="bbe60618861aca8c61614de7c9303af6" STYLE="fork"/>
        <node TEXT="解决办法：永不过期，互斥锁" ID="03c078f8982bc4997ed56d2a9c3568a6" STYLE="fork"/>
      </node>
      <node TEXT="雪崩" ID="1d6e753f1576cbc643e5608d53763251" STYLE="fork">
        <node TEXT="大量key，同一时间失效，数据库崩溃" ID="dc95c6a15898056c5d4bfa083635c700" STYLE="fork"/>
        <node TEXT="集群，预热，限流，过期时间随机值" ID="2e2b0add9c26ea273906290731a12cbc" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="常见问题" ID="917823062bd9155449cf65206f11c59b" STYLE="bubble" POSITION="right">
      <node TEXT="redis为什么那么快" ID="a091e46a17f1a40629e933541932b58b" STYLE="fork">
        <node TEXT="完全基于内存" ID="14394806871a5799f6001bf8bce1c579" STYLE="fork"/>
        <node TEXT="数据结构简单，比如hash，跳表" ID="bbc75d52919cd459d8fa5c90be7a8e79" STYLE="fork"/>
        <node TEXT="没有多线程的上下文切换消耗" ID="55802109285bd82d920494a2acbe4d8f" STYLE="fork"/>
        <node TEXT="IO多路复用" ID="641e70cdc2fddefe0eca69298a0537e0" STYLE="fork"/>
      </node>
      <node TEXT="redis为什么变慢了" ID="dcb23498557cf92e79a98468f35a4d0b" STYLE="fork">
        <node TEXT="查看redis慢日志" ID="3b6c19d94417f530c8640ca10d4b8b9c" STYLE="fork"/>
        <node TEXT="使用了复杂度高的指令" ID="2415c23b95e833b490dd8cc797213c2f" STYLE="fork"/>
        <node TEXT="存储了大key" ID="4d73d08126ea5413c3196967dabaf2db" STYLE="fork"/>
        <node TEXT="集中过期" ID="054420c4b7cc60024c034c68193162f2" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>
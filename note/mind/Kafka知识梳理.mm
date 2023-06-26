
<map>
  <node ID="root" TEXT="Kafka知识梳理">
    <node TEXT="核心特性" ID="91884319363f6fefa489093ef6a0c0e1" STYLE="bubble" POSITION="right">
      <node TEXT="高吞吐量(顺序写，零拷贝)" ID="0079dfc69ba5c656b4a6ad679e8e7bfe" STYLE="fork"/>
      <node TEXT="可扩展" ID="58133b49151911124edf95287daab996" STYLE="fork"/>
      <node TEXT="永久存储" ID="be2f0806b05cbe2a3968c8c8823075e4" STYLE="fork"/>
      <node TEXT="高可用(副本冗余)" ID="edbaaec81579fab58201f5b794bf6bff" STYLE="fork"/>
    </node>
    <node TEXT="应用场景" ID="4d74d2787b7ceb6cc06aca418f925b10" STYLE="bubble" POSITION="right">
      <node TEXT="日志聚合" ID="94e6d2f2e6565152e2488b9e06ae309d" STYLE="fork"/>
      <node TEXT="流处理" ID="e953d01d736d0681e3b99658b1ed9fdd" STYLE="fork"/>
      <node TEXT="事件溯源" ID="be6c6ac529c3b01b2befb7f1489cb2b9" STYLE="fork"/>
      <node TEXT="提交日志" ID="661ca59e0aa46795b28c11de2cc5fd74" STYLE="fork"/>
      <node TEXT="用户活动追踪" ID="c29956ba78c5b98a142806a95dc9ede4" STYLE="fork"/>
    </node>
    <node TEXT="基本概念" ID="37137ad6f482ab2bc61d12910383dfa7" STYLE="bubble" POSITION="right">
      <node TEXT="Producer" ID="a73bb0d3bb3fa917d81f8e09132328c6" STYLE="fork">
        <node TEXT="负责创建消息" ID="93b4b903839a34a032bf52877c226942" STYLE="fork"/>
      </node>
      <node TEXT="Consumer " ID="6b32aad8cc88113ac20c0461c423af90" STYLE="fork">
        <node TEXT="消费消息" ID="fab9050b86f388883170d657caf16e93" STYLE="fork"/>
      </node>
      <node TEXT="Consummer Group" ID="1b2917294bc29c7cd42037d2122f3f5e" STYLE="fork">
        <node TEXT="实现广播" ID="416fccf0900b696cfebf6d083f2fb8dc" STYLE="fork"/>
        <node TEXT="同一组不会重复消费" ID="13cfcdd9ea68f37259ce64f637076840" STYLE="fork"/>
        <node TEXT="partition+group可以提高消费能力" ID="17fc242d482bed52a6f8bc3a294675ba" STYLE="fork"/>
      </node>
      <node TEXT="Broker" ID="ba8c41b089c1baed8f039d1c9e759275" STYLE="fork">
        <node TEXT="Kafka服务器节点" ID="917e1c6914f3cf6cac7127280976d40c" STYLE="fork"/>
      </node>
      <node TEXT="Topic" ID="2ed357dbdcbb7d8493b1bcf32a726679" STYLE="fork">
        <node TEXT="消息生产和消费的基本单位" ID="a38b3b723669c3bff5825915b513e2ae" STYLE="fork"/>
      </node>
      <node TEXT="Partition " ID="524d30a7516da7564b48e898a149443d" STYLE="fork">
        <node TEXT="topic的逻辑分区" ID="76b0ee1ff1e420a964a64750f8461b6b" STYLE="fork"/>
        <node TEXT="segment" ID="75f1d6260f4e167d558f7b57a7397a24" STYLE="fork">
          <node TEXT="index" ID="963939231172b2b65d9427706e755085" STYLE="fork"/>
          <node TEXT="log" ID="2ac8e073f271a9d7c7ab70c1d3813ee9" STYLE="fork"/>
          <node TEXT="temeindex" ID="baafa0336c7ee3feb8160fdb74d62105" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="Offset" ID="d6de142235ded955a565371c7a9e4dbc" STYLE="fork">
        <node TEXT="同个topic分区中唯一标识" ID="f8e8a380ce4f1fe98f674fe92a225424" STYLE="fork"/>
      </node>
      <node TEXT="Replication" ID="aef8ae610f7b5c4e4f21552aaf595927" STYLE="fork">
        <node TEXT="partition在其他broker中的备份，用于恢复数据，不提供读写" ID="15dd6ab6fe4c12d6f669e7e59d76ee05" STYLE="fork"/>
      </node>
      <node TEXT="Record" ID="a269bb66d83fcdb20b466f0012f6d80f" STYLE="fork">
        <node TEXT="生产者实际写入可被读取的消息记录" ID="32e7d0ad15ad89652e7c66883f1b2a78" STYLE="fork"/>
      </node>
      <node TEXT="Zookeeper" ID="3cd40a3337acaa25535166d840639676" STYLE="fork">
        <node TEXT="Broker集群元数据管理系统" ID="35d98c5e94853081e3d7e51ad4785896" STYLE="fork"/>
        <node TEXT="选举主题分区Leader" ID="94d9238b319dde06c6726fb335304c14" STYLE="fork"/>
        <node TEXT="存储kafka元数据信息" ID="adf8708dee2ae37263946630734f17fc" STYLE="fork"/>
        <node TEXT="协调各个代理节点服务" ID="1239b0df9c2cff4cca5e4a09dbe78511" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="同步和选举" ID="40716a44a0aef5c4a86d21d99ede9ebc" STYLE="bubble" POSITION="right">
      <node TEXT="同步" ID="678dd8fb476cc17e156f98c77bb74582" STYLE="fork">
        <node TEXT="ISR队列" ID="3455a981a6b6042c28f9ac39a6c10153" STYLE="fork">
          <node TEXT="在允许误差的同步副本" ID="dba7bb0fa969298ef6577d1e893aca43" STYLE="fork"/>
          <node TEXT="同步成功队列" ID="4b25d8c203bebf68f97d66dc86a896f3" STYLE="fork"/>
        </node>
        <node TEXT="OSR队列" ID="5ad676439b8aab72a56a71f0a034e2d3" STYLE="fork">
          <node TEXT="同步延时不在允许范围" ID="0c76257a4d787e62084508e4238c822d" STYLE="fork"/>
          <node TEXT="存在同步问题队列" ID="a700eb70fea154d5438516a17ae1b981" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="选举" ID="78210695ea02cf3f89283515121bf4ec" STYLE="fork">
        <node TEXT="通过epoch递增新产生的controller防止脑裂" ID="301ac0fe31c455a9f6457b4a2cf5c672" STYLE="fork"/>
        <node TEXT="broker controller控制leader选举" ID="88c2f012f6950703bf1f1953973d13b8" STYLE="fork"/>
        <node TEXT="ISR中取出一个副本所在的broker作为新的leader" ID="1471af9c7f01dd5a3bfff3927a47d765" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="生产机制" ID="4f9fd9bc1e49c18a8c2aa6a97d224297" STYLE="bubble" POSITION="right">
      <node TEXT="总体流程" ID="d0a77fd4cc15935302fd0ded1b6dac20" STYLE="fork">
        <node TEXT="主线程和sender线程" ID="fcca473a1d138d4fdd13c34501526f76" STYLE="fork"/>
        <node TEXT="消息累加器" ID="41ddf4cc8c5de080d3a97c957e017ba3" STYLE="fork">
          <node TEXT="每个partition对应一个队列，先进先出，保证顺序" ID="36b529c20fecdc78831c5ef151508065" STYLE="fork"/>
          <node TEXT="累计发送，减少网络IO" ID="8c2fbf2238e23aa4e50823530058a4d5" STYLE="fork"/>
        </node>
        <node TEXT="1. 先metaData协议请求topic可用broker，leader, partition" ID="16e728e041f8e96bc1be1931ed70e8eb" STYLE="fork"/>
        <node TEXT="2. 主线程：拦截器-&gt;序列化器-&gt;分区选择器-&gt;消息压缩-&gt;消息累加器" ID="78ebfe2878efa50573277488ed15f743" STYLE="fork"/>
        <node TEXT="3. sender线程:RecordAccumulator达到指定数量或者时间，则发送给broker" ID="032bcbeb80a3079cba08be58c1ebad14" STYLE="fork"/>
      </node>
      <node TEXT="消息丢失问题" ID="bd02d682e9d8058f740282c74023f4f9" STYLE="fork">
        <node TEXT="与确认机制有关" ID="2db8d8357878e29bbe8591ea76d457ca" STYLE="fork"/>
      </node>
      <node TEXT="顺序问题" ID="3a59621fda8881b2d6a7fb008e82a369" STYLE="fork">
        <node TEXT="未开启幂等配置，允许累计失败重试次数为1" ID="93126f1581b14c9194ee8bbebd41627f" STYLE="fork"/>
      </node>
      <node TEXT="幂等性和事务" ID="4da77e233d361794df5991cd484999ef" STYLE="fork">
        <node TEXT="ProducerId，sequenceNumber" ID="6e2c3847e4e180c1f66363a1ac2d7bbc" STYLE="fork"/>
        <node TEXT="单个partition中的幂等性保证" ID="077fac65f38e5704dc78ca35258f1252" STYLE="fork"/>
        <node TEXT="事务：跨topic和partition, 多版本控制，segment中的log文件" ID="094ba71184c643ec5bb2adcf8970759c" STYLE="fork"/>
        <node TEXT="可以保证消息不丢失，不重复，max.in.flight.requests.per.connection要小于等于5" ID="6faa7d8f86e35209a3d3292f7ea8b84b" STYLE="fork"/>
      </node>
      <node TEXT="确认机制" ID="a4e69745e07cdff4108b9305b5b900f8" STYLE="fork">
        <node TEXT="发送后即成功" ID="2d9135acb7c5530e0238d69661d6eb07" STYLE="fork"/>
        <node TEXT="broker收到即成功" ID="856c819e54267d8f0156a93c71e9f330" STYLE="fork"/>
        <node TEXT="所有副本同步完成即成功，保证消息不会丢失" ID="937642b2d76e1b584249210caf1b81e0" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="消费机制" ID="0155778cfdabf6ecb0c3d3039e4cd29b" STYLE="bubble" POSITION="right">
      <node TEXT="分区分配" ID="8732094af8f1d450f1b87f2cbc165ff5" STYLE="fork">
        <node TEXT="groupId hash取模50" ID="495c5da06fbe4d5267317994f73a3391" STYLE="fork"/>
        <node TEXT="重分配，相同groupId下consumer发生了变化, Coordinator+心跳检测" ID="dcfde4f891206d406aa0a6547abc62bf" STYLE="fork"/>
      </node>
      <node TEXT="offset提交" ID="de23ea864fca81e9fa2d45856d49872c" STYLE="fork">
        <node TEXT="自动提交" ID="109f5e4c2c7d3257c52b5a09a71f9e01" STYLE="fork">
          <node TEXT="隔段时间提交(可配置),有重复消费风险" ID="649c19c216beacac6245a13630c4d845" STYLE="fork"/>
        </node>
        <node TEXT="手动提交" ID="c0eea3b3a0c57f66a3eaed3cf46ba529" STYLE="fork">
          <node TEXT="同步提交，阻塞下次拉取" ID="0c57d421089d5ed096e2198a6abed23d" STYLE="fork"/>
          <node TEXT="异步提交+回调函数" ID="ac4b03fcf0fdafdd8e4582e70d79d942" STYLE="fork"/>
          <node TEXT="异步提交+同步补救" ID="5d1d4a9b9f6ec472cd7685bdd74ecb1c" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="存储机制" ID="fa34f431d56e69b07d7e54afa77e3f6a" STYLE="bubble" POSITION="right">
      <node TEXT="构成" ID="feedf053736e303d96446db2260cde11" STYLE="fork">
        <node TEXT="index(稀疏索引), log, timeIndex, 按上一个offset命名，长度19" ID="bc0b23c89c49646a1a1d9a2fa6910d5f" STYLE="fork"/>
      </node>
      <node TEXT="查找过程" ID="2bf36406e08d81f43a95a56872341d06" STYLE="fork">
        <node TEXT="二分法查找segment(小于offset最接近)-&gt;二分查找index(小于offset最接近)-&gt;log(顺序查找)" ID="14e496e06909c949526a11fd5c5b3903" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="常见问题" ID="d5115d18a1bce370150928616f53772e" STYLE="bubble" POSITION="right">
      <node TEXT="kafka为什么这么快" ID="120fa07557a1f40a8b5fe4b159b1cbf3" STYLE="fork">
        <node TEXT="发送时批量压缩" ID="846b8e380593fa56f873d5c9040f7a39" STYLE="fork"/>
        <node TEXT="顺序写入" ID="69bbd03f2ffa875bed3770ce7ba49290" STYLE="fork"/>
        <node TEXT="零拷贝" ID="87afbf65abb402a864b19013212c4218" STYLE="fork"/>
        <node TEXT="索引存储" ID="9168f950c682febe1aa644997b3c79d5" STYLE="fork"/>
      </node>
      <node TEXT="Kafka可靠性保证(消息不丢失)" ID="9fc4b7358392585a53109764accc4547" STYLE="fork">
        <node TEXT="producer等所有副本同步完，才继续生产" ID="a676fa2d66851f8d6d1bc2c3f68d78a8" STYLE="fork"/>
        <node TEXT="多点集群" ID="7388d2c5a34a1d310657ce0bd53b0f2e" STYLE="fork"/>
        <node TEXT="手动提交（异步提交+同步提交）" ID="9a8a51305362496ae099f40d606b2a9f" STYLE="fork"/>
      </node>
      <node TEXT="Kafka如何保证消息不重复消费" ID="93b6d89b8a9b98f8468a62f3fa288ed3" STYLE="fork">
        <node TEXT="开启幂等性，生产者端保证不发重复消息，max.in.flight.requests.per.connection要小于等于5。" ID="2fb891c03845dc8158b8cdf4883a3504" STYLE="fork"/>
        <node TEXT="Consumer心跳超时时间和consumer两次poll的最大时间间隔值设置大一点，避免认为死掉发生重平衡" ID="1602c42b5d7c514cc6986c44d7664357" STYLE="fork"/>
        <node TEXT="消费端单独做幂等处理" ID="b79422c3bf0b56d384fd43111a3e25c3" STYLE="fork"/>
      </node>
      <node TEXT="Kafka保证顺序" ID="35085c7f2cc790e6077e07611b35e538" STYLE="fork">
        <node TEXT="单partition" ID="15bbeaed5c9a06d5e380b193615fe25d" STYLE="fork"/>
        <node TEXT="max.in.flight.requests.per.connection要等于1" ID="ebbad9e7cdedcb9c25f437cd3446b3e3" STYLE="fork"/>
        <node TEXT="单consumer" ID="c096d72aa53b9999e1feda661c34f3b9" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>
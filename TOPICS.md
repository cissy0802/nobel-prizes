# 诺贝尔奖清单 Nobel Prizes Reading List（2021–2026 · 科学四奖 + 文学奖）

BigCat 人工维护的清单：2021–2026 六年，每年物理、化学、生理学或医学、经济学、文学五个奖，共 30 期，**一个奖一页**（同年同奖拆给两项工作的，在一页里分两条线讲）。和平奖不收。

获奖人与授奖词逐字取自官方 API `api.nobelprize.org/2.1/nobelPrizes?nobelPrizeYear=YYYY`（2026-10-11 拉取）。

> **选题 / 编号规则**
> - **严格从上往下取第一个未做的 slug**。顺序已排好：开头几期先对准兴趣，五个奖项交错，文学奖约每 5–6 期一个，**2026 年的五个奖放在最后**（给官方科普材料和评论留出沉淀时间）。**照顺序写，别跳序。**
> - 文件名 `{slug}-prize{N}.html`，**N = 现有最大 N + 1**（写作顺序，与清单顺序解耦）。
> - 本清单**人工维护、routine 只读不改**（`publish.sh` 硬卡改动）。全部写完 → PushNotification 告知、本次不发布。每年 10 月颁奖后，本地任务 `nobel-annual-refill` 会追加新一届的五条。
> - 每条下面的 `线索` 是选题时的提示，**不是结论**，读完官方材料后发现它不对，就按读到的写。
> - `[待公布]` 的条目：获奖人还没出来，或清单还没回填。轮到它时先查官方 API；查到了就照常写，查不到就不发布并推送。

---

- **2024 物理学奖** — John J. Hopfield, Geoffrey Hinton
  - motivation: for foundational discoveries and inventions that enable machine learning with artificial neural networks
  - 线索：物理学奖颁给了 AI 的祖先。Hopfield 网络借的是自旋玻璃的能量地形，玻尔兹曼机借的是统计力学，「这算不算物理」的争论本身就值得讲。
  - slug: `physics-2024-neural-networks`

- **2023 生理学或医学奖** — Katalin Karikó, Drew Weissman
  - motivation: for their discoveries concerning nucleoside base modifications that enabled the development of effective mRNA vaccines against COVID-19
  - 线索：换掉一个字母（尿苷 → 假尿苷），免疫系统就不再把外来 mRNA 当敌人。几十年拿不到经费的冷门路线，最后成了疫情的解药。
  - slug: `medicine-2023-mrna`

- **2024 经济学奖** — Daron Acemoglu, Simon Johnson, James A. Robinson
  - motivation: for studies of how institutions are formed and affect prosperity
  - 线索：同一座城被一道边境劈成两半，一半富一半穷。殖民者在哪儿「定居」、在哪儿「榨取」，决定了几百年后的贫富。
  - slug: `economics-2024-institutions`

- **2022 物理学奖** — Alain Aspect, John Clauser, Anton Zeilinger
  - motivation: for experiments with entangled photons, establishing the violation of Bell inequalities and pioneering quantum information science
  - 线索：爱因斯坦和玻尔吵了几十年的问题，被贝尔变成一个能在实验室里测的不等式。宇宙不是「定域实在」的。
  - slug: `physics-2022-entanglement`

- **2024 化学奖** — David Baker（一半）；Demis Hassabis, John Jumper（一半）
  - motivation: Baker — for computational protein design; Hassabis & Jumper — for protein structure prediction
  - 线索：一半奖给「从序列猜结构」（AlphaFold），一半给「从想要的功能反推序列」（设计全新蛋白）。一个正向问题，一个逆向问题。
  - slug: `chemistry-2024-proteins`

- **2024 文学奖** — Han Kang（韩江）
  - motivation: for her intense poetic prose that confronts historical traumas and exposes the fragility of human life
  - 线索：《素食者》里一个女人拒绝吃肉，《少年来了》写光州。身体和历史创伤是同一个主题的两面。
  - slug: `literature-2024-han-kang`

- **2021 生理学或医学奖** — David Julius, Ardem Patapoutian
  - motivation: for their discoveries of receptors for temperature and touch
  - 线索：辣椒为什么「烫」？薄荷为什么「凉」？用辣椒素钓出热感受器 TRPV1，用戳细胞找到触觉的 Piezo。感觉是怎么被翻译成电信号的。
  - slug: `medicine-2021-temperature-touch`

- **2021 物理学奖** — Syukuro Manabe, Klaus Hasselmann（一半）；Giorgio Parisi（一半）
  - motivation: Manabe & Hasselmann — for the physical modelling of Earth's climate, quantifying variability and reliably predicting global warming; Parisi — for the discovery of the interplay of disorder and fluctuations in physical systems from atomic to planetary scales
  - 线索：气候模型和自旋玻璃放在同一个奖里，主题是「复杂系统」。讲清委员会为什么把它们放在一起。
  - slug: `physics-2021-complex-systems`

- **2021 经济学奖** — David Card（一半）；Joshua D. Angrist, Guido W. Imbens（一半）
  - motivation: Card — for his empirical contributions to labour economics; Angrist & Imbens — for their methodological contributions to the analysis of causal relationships
  - 线索：不能做实验的社会科学，怎么借「自然实验」回答因果问题？最低工资涨了，就业真的会掉吗？
  - slug: `economics-2021-natural-experiments`

- **2023 化学奖** — Moungi Bawendi, Louis Brus, Aleksey Yekimov
  - motivation: for the discovery and synthesis of quantum dots
  - 线索：同一种材料，颗粒大小不同，颜色就不同。尺寸本身成了一个可以调的旋钮，量子效应从课本走进了电视屏幕。
  - slug: `chemistry-2023-quantum-dots`

- **2022 生理学或医学奖** — Svante Pääbo
  - motivation: for his discoveries concerning the genomes of extinct hominins and human evolution
  - 线索：从四万年前的骨头里读出尼安德特人的基因组，又从一节指骨里发现了一个没人见过的人种（丹尼索瓦人）。你身上大约有一两个百分点是他们的。
  - slug: `medicine-2022-ancient-genomes`

- **2022 文学奖** — Annie Ernaux（安妮·埃尔诺）
  - motivation: for the courage and clinical acuity with which she uncovers the roots, estrangements and collective restraints of personal memory
  - 线索：用「无人称自传」写自己的堕胎、父亲、阶层跃迁。个人记忆和集体记忆的边界在哪。
  - slug: `literature-2022-ernaux`

- **2025 物理学奖** — John Clarke, Michel H. Devoret, John M. Martinis
  - motivation: for the discovery of macroscopic quantum mechanical tunnelling and energy quantisation in an electric circuit
  - 线索：量子效应不只属于原子。一个手能拿得起的电路也会「穿墙」，而这正是今天超导量子计算机的地基。
  - slug: `physics-2025-macroscopic-quantum`

- **2025 经济学奖** — Joel Mokyr（一半）；Philippe Aghion, Peter Howitt（一半）
  - motivation: Mokyr — for having identified the prerequisites for sustained growth through technological progress; Aghion & Howitt — for the theory of sustained growth through creative destruction
  - 线索：人类历史上大部分时间没有持续增长，为什么两百年前突然有了？经济史学家讲「有用知识」，理论家讲「创造性破坏」。
  - slug: `economics-2025-innovation-growth`

- **2025 生理学或医学奖** — Mary E. Brunkow, Fred Ramsdell, Shimon Sakaguchi
  - motivation: for their discoveries concerning peripheral immune tolerance
  - 线索：免疫系统里有一支「维和部队」（调节性 T 细胞），专门让免疫别攻击自己。坂口志文坚持了很多年没人信的路线。
  - slug: `medicine-2025-immune-tolerance`

- **2022 化学奖** — Carolyn Bertozzi, Morten Meldal, K. Barry Sharpless
  - motivation: for the development of click chemistry and bioorthogonal chemistry
  - 线索：像扣安全带一样把分子「咔哒」扣在一起，而且能在活细胞里扣，不干扰生命本身的化学。Sharpless 第二次拿化学奖。
  - slug: `chemistry-2022-click-chemistry`

- **2023 物理学奖** — Pierre Agostini, Ferenc Krausz, Anne L'Huillier
  - motivation: for experimental methods that generate attosecond pulses of light for the study of electron dynamics in matter
  - 线索：阿秒之于一秒，约等于一秒之于宇宙年龄。造出足够短的闪光，才能给电子「拍照」。
  - slug: `physics-2023-attosecond`

- **2023 文学奖** — Jon Fosse（约恩·福瑟）
  - motivation: for his innovative plays and prose which give voice to the unsayable
  - 线索：用新挪威语写作，句子不断重复、几乎没有句号。「说出不可说之物」与他的天主教神秘主义。
  - slug: `literature-2023-fosse`

- **2024 生理学或医学奖** — Victor Ambros, Gary Ruvkun
  - motivation: for the discovery of microRNA and its role in post-transcriptional gene regulation
  - 线索：在一种一毫米长的线虫身上发现的一小段 RNA，起初被当成虫子的怪癖，后来发现人类基因组里有上千个。基因的「音量旋钮」。
  - slug: `medicine-2024-microrna`

- **2022 经济学奖** — Ben Bernanke, Douglas Diamond, Philip Dybvig
  - motivation: for research on banks and financial crises
  - 线索：银行的本职就是「借短贷长」，所以它天生怕挤兑。一个自我实现的预言模型，和一位后来亲手应对 2008 年的美联储主席。
  - slug: `economics-2022-banks-crises`

- **2025 化学奖** — Susumu Kitagawa, Richard Robson, Omar M. Yaghi
  - motivation: for the development of metal–organic frameworks
  - 线索：用金属节点和有机「连杆」搭出满是空洞的分子房子，一克材料的内表面积能铺满一个足球场。能从沙漠空气里取水。
  - slug: `chemistry-2025-mofs`

- **2023 经济学奖** — Claudia Goldin
  - motivation: for having advanced our understanding of women's labour market outcomes
  - 线索：女性就业率在两百年里画出一条 U 形曲线，而今天的收入差距主要出现在生孩子之后。「贪婪的工作」。
  - slug: `economics-2023-goldin`

- **2021 文学奖** — Abdulrazak Gurnah（古尔纳）
  - motivation: for his uncompromising and compassionate penetration of the effects of colonialism and the fate of the refugee in the gulf between cultures and continents
  - 线索：桑给巴尔出生、十几岁逃到英国的难民作家。获奖前在中文世界几乎没有译本。
  - slug: `literature-2021-gurnah`

- **2021 化学奖** — Benjamin List, David W.C. MacMillan
  - motivation: for the development of asymmetric organocatalysis
  - 线索：分子有左右手，药用错了手性可能致畸（沙利度胺）。在金属和酶之外，他们找到了第三类催化剂：小小的有机分子。
  - slug: `chemistry-2021-organocatalysis`

- **2026 生理学或医学奖** — Karl Deisseroth, Peter Hegemann, Georg Nagel
  - motivation: for their discoveries concerning light-gated ion channels and optogenetics
  - 线索：一种会追光的绿藻身上的蛋白，被装进神经元，从此可以用光开关特定的脑细胞。从藻类生物学到神经科学的远距离跳跃。
  - slug: `medicine-2026-optogenetics`

- **2026 物理学奖** — Francis Halzen
  - motivation: for decisive contributions to the IceCube Neutrino Observatory and the discovery of high-energy neutrinos of astrophysical origin
  - 线索：把南极一立方公里的冰变成探测器，抓住来自宇宙深处、几乎不和任何东西作用的粒子。
  - slug: `physics-2026-icecube-neutrinos`

- **2025 文学奖** — László Krasznahorkai（克拉斯诺霍尔卡伊）
  - motivation: for his compelling and visionary oeuvre that, in the midst of apocalyptic terror, reaffirms the power of art
  - 线索：一句话能写好几页的匈牙利作家，《撒旦探戈》被塔尔·贝拉拍成七小时电影。末日感里的艺术。
  - slug: `literature-2025-krasznahorkai`

- **2026 化学奖** — Henri B. Kagan, Kenso Soai
  - motivation: for the discovery of non-linear effects and autocatalysis in asymmetric organic synthesis
  - 线索：生命为什么只用一种手性的氨基酸？一点点不对称如何自我放大成全部（Soai 反应）。与 2021 化学奖（不对称有机催化）是同一条线，写时互链。
  - slug: `chemistry-2026-chiral-amplification`

- **2026 经济学奖** — [待公布]（2026-10-12 公布）
  - motivation: [待公布]
  - 线索：轮到时先查官方 API 获奖人与授奖词。
  - slug: `economics-2026`

- **2026 文学奖** — Anne Carson（安妮·卡森）
  - motivation: for her bold and inventive oeuvre that, in playful dialogue with the classical tradition, has created new forms for contemporary literature
  - 线索：古典学者兼诗人，把萨福、希腊悲剧和当代生活拼贴在一起，诗体小说、散文诗、译本之间没有界线。
  - slug: `literature-2026-carson`

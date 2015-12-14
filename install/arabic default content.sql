-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 14 Décembre 2015 à 13:48
-- Version du serveur :  10.0.17-MariaDB
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `7`
--

-- --------------------------------------------------------

--
-- Structure de la table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `input_date`, `last_update`) VALUES
(2, 1, 'حوسبة ( اتمتة ) المكتبات', '', 'الطبعة الثانية', '9789957062125', 12, '2010', '24 سم،336 ص', '', '125', 'ar', NULL, 9, '125', 'لقد كان موضوع استخدام الحواسيب في المكتبات ومراكز الوثائق والمعلومات، ولا يزال إلى حد ما، من الأمور التي يدور حولها الجدل ، لا في عالمنا العربي فحسب بل وحتى في العالم الغربي، الذي سبقنا في الحوسبة سنين طويلة.\r\n\r\nومن منطلق أهمية حوسبة إجراءات وخدمات المكتبات ومراكز الوثائق والمعلومات وأتمتها، فقد اشتمل الكتاب على محاور وفصول عدة. فبعد التعريف بمفاهيم أساسية عن حوسبة المكتبات، فقد تطرق الباحثان إلى جملة أمور مهمة في هذا المجال، مثل: التخطيط لحوسبة المكتبات وما يواكب ذلك من خطوات التخطيط للحوسبة، وتهيئة الأجهزة والبرامجيات المناسبة، وتأمين البيئة التكنولوجية المناسبة بكل أبعادها وجوانبها. كذلك عالج الباحثان موضوعات تحليل النظم المطلوبة وتصميمها، وبناء قواعد البيانات، وما يعنيه ذلك. ثم التدريب على مستوى المستفيدين والعاملين في المكتبات، وما يعنيه ذلك في مجال حوسبة المكتبات.\r\n\r\nأما تطبيقات الحوسبة في المكتبات، فقد اشتملت على حوسبة الفهارس، وحوسبة الإعارة، ونظم التزويد والاختيار المحوسبة المناسبة. إضافة إلى أدوات ووسائل حوسبة المكتبات المختلفة على مستوى المكانز وملف الإسناد وتركيبة تراسل البيانات وغيرها. وكذلك تعريف بأهم الحزم والبرامجيات الجاهزة المستخدمة في مجال المكتبات ومراكز المعلومات.\r\n\r\nكذلك فقد تطرق الباحثان إلى موضوعات شبكات المكتبات المحوسبة، وفوائدها ومعوقاتها، ومجالات التعاون، والمعايير الموحدة والمواصفات المطلوبة لشبكات المكتبات. في جانب آخر فقد كان لخدمات المكتبات المحوسبة مجال واسع في صفحات الكتاب، من حيث تأمين مصادر المعلومات الإلكترونية واستثمار مكانات الإنترنت في خدمات المكتبات. وكذلك كان أمن المعلومات والفيروسات جانب آخر من الكتاب، إضافة إلى تقويم حوسبة المكتبات.\r\n\r\nوقد اشتمل الجزء الأخير من الكتاب على تطبيقات عملية في مجال حوسبة المكتبات، اشتمل على ثمانية أقسام مفيدة للطلبة والعاملين في مجال المكتبات والمعلومات.', '200850842_0.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2007-11-29 15:53:35', '2015-12-14 19:33:21'),
(4, 1, 'المعجم الموسوعي لتكنولوجيا المعلومات والاتصالات والانترنت', '', '', '9789957065768', 12, '2016', '728 ص', '', '126', 'ar', NULL, 0, '005.4/32 22', 'تزخر الكتابات والمصادر والأدبيات المتخصصة في مجال تكنولوجيا المعلومات المعاصرة، العربية منها والإنكليزية، بالعديد من المصطلحات والتعبيرات الفنية والتقنية، التي يحتاج الطلبة والمهتمون بالموضوع إلى التعرف على ماهيتها والمقصود بها، خاصة وإن هنالك حركة متطورة، وخلطا في الاستخدامات والتعبيرات والتعريفات، بين عدد ليس  بالقليل من المصادر والأدبيات المتوفرة، نظراً للتوسع الكبير والحاجة المستمرة في استخدام مثل هذه المصطلحات، والاجتهادات والتفسيرات التي يذهب إليها بعض الكتاب والمتخصصون في المجالات المختلفة والمتداخلة لتكنولوجيا المعلومات. وقد وجد الكاتب أن التعريبات والاجتهادات المختلفة، والمتباينة، في كثير من الأحيان، بين هذه التعريبات والترجمات للمصطلحات، المتعارف على معظمها باللغة الإنكليزية واللاتينية، أدت وتؤدي إلى الكثير من الخلط والارتباك عند المهتمين في هذا المجال والطلبة المعنيين بدراسته، في منطقتنا العربية، وما أكثر مثل هؤلاء المهتمين في هذا المجال الحيوي المهم، في هذه الأيام، حيث نواجه فيها تحركاً سريعاً وثورة حقيقية في مجال المعلومات وتكنولوجياتها. وعلى هذا الأساس فقد وجد الكاتب ضرورة تنظيم هذا المعجم الموسوعي، وترتيب مداخله بموجب التسلسل الهجائي للغة الإنكليزية، حيث إن المصطلحات الموجودة في تلك اللغة متعارف عليها وموحدة، بخلاف العديد من المصطلحات المترجمة إلى لغتنا العربية. وكمثال على ذلك فإنه إذا ما تطرقنا إلى مصطلح (compact disk) فإننا سنرى عدة ترجمات عربية لها، في مختلف مناطقنا العربية، بل وفي البلد الواحد، كالأقراص المتراصة، والأقراص المكتنزة، أو المضغوطة، أو المدمجة، أو الليزرية، أو المليزرة ...الخ. وهكذا الحال بالنسبة إلى ترجمة مصطلحات أخرى. ومن هذا المنطلق فقد تم ترتيب قائمة المحتويات، التي اشتملت على أكثر من (500) مصطلح، بطريقة هجائية متسلسلة، حسب ورود المصطلح باللغة الانكليزية.\r\n', 'lmjm-lmwswy.jpg.jpg', 'cathedral-bazaar.pdf', 0, 1, NULL, 0, '', '2007-11-29 16:14:44', '2015-12-14 19:19:44'),
(16, 1, 'قواعد البيانات ونظم المعلومات في المكتبات ومراكز المعلومات', '', 'الطبعة الثانية', '9789957062644', 0, '2009', '256', '', '125', 'ar', NULL, 9, '125', 'ظهرت العديد من المؤلفات في مجال قواعد البيانات ولكنها غالبا من وجهة نظر المتخصصين في تكنولوجيا المعلومات وتطبيقات قواعد البيانات في مختلف المؤسسات، أما في بيئة المكتبات ذات الخصوصية في نوعية البيانات والمعلومات وأسلوب التعامل معها ومعالجتها واسترجاعها فهي محدودة جداً.\r\n\r\nإن نظم ادارة قواعد البيانات وأنواع القواعد وبناءها في جميع أنواع المكتبات ومراكز المعلومات لها خصوصية نابعة من أهداف المكتبات ومراكز المعلومات والخدمات التي تقدمها والمخرجات المطلوبة. لذا جاءت فكرة هذا الكتاب الذي توزعت معلوماته على جزئين رئيسين، خصص الجزء الأول منه لقواعد البيانات وإدارتها، وقد اشتمل الجزء الأول على ثلاثة محاور، حيث تناول المحور الأول على مفاهيم ومصطلحات قواعد البيانات من تعريف لمفهوم البيانات والمعلومات وقاعدة البيانات ومكوناتها، وكيف يمكن أن تكون قاعدة البيانات ناجحة، وأهمية وقيمة تطور قواعد البيانات وارتباطها بالحواسيب ونظم قاعدة البيانات.\r\n\r\nوقد تناول المحور الثاني نظم إدارة قواعد البيانات حيث عالج مراحل إدارة قواعد البيانات ومهام مدير قاعدة البيانات، وفوائد اعتماد قواعد البيانات في المكتبات ومراكز المعلومات، وتحديد المعنيين بقواعد البيانات في المكتبات ومراكز المعلومات، ووظائف نظم ادارة المكتبات ومراكز المعلومات، وأنواع نظم إدارة المكتبات.\r\n\r\nوفي المحور الثالث الذي اشتمل على أنواع قواعد البيانات حيث عالج أنواع هذه القواعد من حيث طبيعة البيانات، والشكل، والاتاحة. كما اشتمل على نماذج لقواعد البيانات المتاحة على الخط المباشر والانترنت، وخطوات استراتيجية البحث.\r\n\r\nأما الجزء الثاني الذي خصص للبرمجيات المعتمدة في بناء قواعد البيانات في المكتبات ومراكز المعلومات فقد اشتمل على ثلاثة محاور. كرس المحول الأول لمستلزمات قواعد البيانات من بيانات وأجهزة وبرمجيات ومستفيدين والبيئة التكنولوجية للعاملين في مجال المحوسب. بينما تناول المحور الثاني أنواع البرمجيات من حيث الوظائف، والأجهزة، وطريقة الأعداد، حسب مجالات استخدامها، وحسب أسلوب معالجتها للبيانات، كما وتناول المحور عرض لميزات استخدام حزم البرمجيات، وأسس اختيار حزمة البرمجيات، كما اشتمل على لغات البرمجة بأنواعها المختلفة.\r\n\r\nأما المحور الثالث الذي خصص للبرمجيات المستخدمة في المكتبات ومراكز المعلومات، فقد اشتمل على عرض لأحد عشر نظاما من الأنظمة المتكاملة لإدارة المكتبات ومراكز المعلومات الأكثر استخداما في المكتبات ومؤسسات المعلومات العربية. \r\n\r\nلقد وجدت الباحثتان ومن خبرتهما في التعامل مع قواعد البيانات الخاصة بالمكتبات ومراكز المعلومات ضرورة تقديم معلومات تفصيلية مفيدة للذين يتعاملون مع قواعد البيانات في جميع أنواع المكتبات من حيث الإدارة والبناء والتصميم باعتماد النظم الجاهزة، وعرض موسع لعدد من قواعد البيانات المتاحة عبر الخط المباشر أو المصممة محليا باعتماد الحزم Packages الجاهزة كي تستطيع المكتبات بقطاعاتها المختلفة الجامعية والعامة والمدرسية والمتخصصة من التعامل مع قواعد البيانات حسب رغبتهم واحتياجاتهم.', '200850844_0.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:24:16', '2015-12-14 19:24:16'),
(17, 1, 'شبكات المعلومات والاتصالات', '', 'الطبعة الثانية', '9789957064846', 12, '', '320 ص', '', '125', 'ar', NULL, 9, '125', 'مما لا شك فيه إننا لازلنا نعيش في عصر المعلومات، أو بالأحرى عصر ثورة المعلومات، بعد أن ودعنا العصر الصناعي، أو عصر الثورة الصناعية، وبعد أن ودع هذا الأخير عصر الزراعة. وعصر ثورة المعلومات الذي نعيش قد ارتبط بتكنولوجيا المعلومات، التي أصبحت جزءاً لا يتجزأ من ثورة المعلومات. وبعبارة أوضح فإنه من دون تكنولوجيا المعلومات فلن تكون هنالك ثورة للمعلومات. وثورة المعلومات، وتكنولوجيا المعلومات تعنيان، من ضمن ما تعنيان، تأمين المعلومات المناسبة للمستفيد المناسب، في الوقت المطلوب،السريع وما المناسب، ليستطيع أن ينجز عمله، أو يتخذ قراره أو يقدم منتجاته أو خدماته في خضم عالم كثير ومزدحم بالمنافسة.\r\n\r\nمن جانب آخر فإنه لا يمكن لتكنولوجيا المعلومات أن تؤدي مهامها وتؤتي أوكلها، من دون شبكات المعلومات المسئوولة عن نقل وإيصال أفضل وأسرع المعلومات للمستفيد، أياً كان موقعه ومكانه. وعلى هذا الأساس فإننا نستطيع القول بأن شبكات المعلومات هي جزء لا يتجزأ من تكنولوجيا المعلومات، بل وأن شبكات المعلومات، المعتمدة على تكنولوجيا الاتصالات، مضافاً لها تكنولوجيا الحواسيب، التي تعمل على معالجة وتخزين الكم الهائل من المعلومات، هما الركيزتان الأساسيتان لتكنولوجيا المعلومات. وهذه الأخيرة، أي تكنولوجيا المعلومات، هي الاطار العام والركن الأساس لثورة المعلومات المعاصرة.\r\n\r\nومن هنا تأتي أهمية هذا الكتاب، الذي اشتمل في فصله الأول على التعريف بشبكات المعلومات، وفوائدها والمجالات التعاونية لاستخدامها، ومستلزمات بناءها، ومعوقات تنفيذها. وكذلك طرق تقويم الخدمات التي تقدم من خلالها.\r\n\r\nواشتمل الفصل الثاني على أنواع شبكات المعلومات المختلفة، كشبكات المناطق المحلية، والواسعة والمدنية، والإنترنت، وكذلك الإنترانت والأكسترانت. فضلاً عن ذلك فقد تطرق الكاتبان إلى التركيبة البنيوية للشبكات، أي أشكال الشبكات، كالشبكات النجمية والخطية والدائرية والهرمية.\r\n\r\nوجاء الفصل الثالث ليتطرق فيه الكاتبان إلى تكنولوجيا تناقل البيانات في شبكات المعلومات، وتطرقا إلى الاتصالات عن بعد، ومفهومها، وعناصرها ووظائفها. ثم الوسائل السلكية واللاسلكية في شبكات المعلومات.\r\n\r\nومن المعيب أن نتكلم عن موضوع شبكات المعلومات من دون أن نتطرق إلى الشبكة العالمية/ الإنترنت، لأنها شبكة الشبكات، أو كما يحلو للبعض أن يسميها أم الشبكات. وعلى هذا الأساس فقد  جاء الحديث في الفصل عن  مكونات الإنترنت وتركيبتها وفوائدها الإتصالية،. وكذلك فقد تطرق الكاتبان إلى الشبكة العنكبوتية العالمية، كجزء مهم من الشبكة العالمية. وأخيراً بعض من التطبيقات الإتصالية للشبكة العالمية.\r\n\r\nأما الفصل الخامس فق جاء تحت عنوان أمن شبكات المعلومات. وتطرق فيه الكاتبان إلى الجرائم عبر الشبكا، و أنواع الجرائم، كالقرصنة والاختراق، والجرائم المالية والاقتصادية، وتجاوزات حقوق الملكية الفكرية. ثم مشكلات وتجاوزات على الحرية الفردية، ثم المخاطر الصحية التي يتعرض لها الأفراد عن طريق استخدام الشبكات ووحداتها الحاسوبية. من جانب آخر فقد اشتمل هذا الفصل على الفيروسات التي تتعرض لها الشبكات الحاسوبية، بأنواعها المختلفة، وطرق حماية الشبكات منها. وأخيراً القوانين والتشريعات الخاصة بمواجهو جرائم الشبكات.\r\n\r\nواشتمل الفصلين السادس والسابع على عدد من التجارب العربية والإقليمية لشبكات المعلومات. فكانت هنالك شبكة المكتبات المصرية، وعدد من شبكات المكتبات الخليجية، ومن ثم أهم المعالم الأساسية للشبكة العربية للمعلومات، التي طال انتظارنا لها. ثم بعض من التجارب العالمية والإقليمية الرائدة لشبكات المعلومات.\r\n\r\nأم الفصل الثامن والأخيرفقد تم تكريسه إلى موضوعين، هما وحدات القياس المستخدمة في تراسل البيانات عبر الشبكات، ثم أهم المصطلحات والتعاريف المهمة المستخمة في مجال الشبكات والاتصالات.', '200850838_0.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:27:48', '2015-12-14 19:27:48'),
(18, 1, 'البحث العلمي واستخدام مصادر المعلومات التقليدية والالكترونية', '', 'الطبعة السادسة', '', 0, '2015', '384', '', '128', 'ar', NULL, 0, 'NONE', 'إن هذا الكتاب يمكن أن يعتمد ويدرس في مختلف الأقسام العلمية للكليات، ولطلبة الدراسات الجامعية الأولية منها والعليا، لأنه يعالج العديد من جوانب وأساسيات البحث العلمي، أن لم يكن جميعها. كذلك فأن الكتاب مفيد ومهم لجميع المعنيين بكتابة البحوث من مختلف شرائح المجتمع في العديد من المؤسسات.\r\n\r\nوقد حرص الكتاب أن تكون الأمثلة والنماذج المستخدمة في المتن تخص موضوعات شتى لتسهيل متابعة معلوماته والاستفادة منه.\r\n\r\nولقد حاول الكاتب أن يعرف القراء والباحثين، بمختلف مستوياتهم وشرائحهم وتخصصاتهم، بأهم جوانب البحث العلمي واستخدام مصادر المعلومات. وقد ابتدأ بالكتابة عن تطور البحث العلمي ومستلزماته وأنواعه. وما يتعلق بتطور التفكير الإنساني وتطور المعرفة. على اعتبار بأن البحث يولد معلومات جديدة تقود إلى المعرفة، وإن المعرفة ضرورية ومطلوبة للفهم والإدراك البشري. وإذا ما توافرت المهارة البحثية البشرية فأن ذلك يقود إلى تأمين الحلول العلمية المناسبة للمشاكل والمعوقات التي تواجهها المجتمعات، بكل جوانبها الاقتصادية والاجتماعية والعلمية والتنموية، وكل ما يعترض حياة الإنسان ومسيرته، في كل هذه المجالات وغيرها، وهذا ما يساعده في اتخاذ الخطوات المناسبة لمواجهة مثل تلك المشاكل والتغلب عليها.\r\n\r\nوبعد التطرق إلى بعض التعاريف بجوانب الموضوع المختلفة والتعرف على خلفيته التاريخية استعرض الكاتب جانبين أساسيين في البحث العلمي هما المتطلبات والمستلزمات الضرورية التي تجعل من البحث جيداً وموفقاً ومتميزاً على غيره من البحوث، ثم الصفات التي يجب أن يتسم بها الباحث العلمي نفسه لكي يكون ناجحاً ومؤهلاً للكتابة عن مشكلة ما أو موضوع ما مطروح عليه. ومن ثم التطرق الى مختلف أنواع البحوث، والمقارنة بينها، وخصوصاً البحوث الكمية والبحوث النوعية. ومن ثم بحوث العلوم الإنسانية وبحوث العلوم الصرفة والتطبيقية.\r\n\r\nكذلك فقد ثم استعراض خطة البحث العلمي والخطوات المطلوبة له، ابتداء بتحديد مشكلة البحث واختيار موضوعها، وانتهاء بكتابة تقرير البحث، مروراً بالقراءات الاستطلاعية ومراجعة البحوث السابقة، ثم صياغة الفرضيات، وتصميم خطة البحث ومنهجية، وجمع المعلومات وتحليلها واستنباط الاستنتاجات والمقترحات عنها. بالإضافة إلى التطرق إلى إعداد خطة البحث النوعي.\r\n\r\nوغطى الكتاب في الفصول أخرى من هذا الكتاب جوانب أساسية من مناهج البحث، إبتداء بالمنهج الوثايقي التحليلي، والمنهج الوصفي المسحي، ودراسة الحالة، والمنهج التجريبي، ومنهج تحليل المضمون والامنهج المقارن، ومنهجي دراسة الأعراق والظواهر، وانتهاء بالبحث الإجرائي النوعي. ثم تطرق إلى موضوع المعاينة والعينات في البحث العلمي. ثم أساليب جمع البيانات والمعلومات. وبعدها طرق تحليل البيانات وعرضها. وخصص الكاتب جانباً آخر لوصف إعداد التقرير النهائي للبحث، ولغته وأسلوبه، وفنون التعامل مع الإشارات والمختصرات، أقسامه المختلفة ومحتوياته والجوانب الأخرى التي تظهره بالمستوى الجيد واللائق، ومن ثم مناقشته.\r\n\r\nتطرق الكاتب إلى جانب من جوانب إعداد البحث العلمي، لطالما أغفلها العديد من كتاب البحث العلمي والمتخصصين والمهتمين به، ألا وهي مصادر وأوعية المعلومات المطلوبة للبحث العلمي واستخداماتها، بأنواعها الورقية التقليدية لمختلفة، ومن ثم التعامل مع مصادر المعلومات الإلكترونية والإنترنت. كذلك فقد استعرض الكاتب، في فصل لاحق إلى موضوع توثيق المصادر والمعلومات المستشهد بها في البحث، بمختلف أنواعها وأشكالها. وأخيراً لم ينسى الكاتب الإشارة إلى موضوع استخدام الكتبة ومعرفة تنظيم مصادر المعلومات وفهرستها وتصنيفها وترتيب موادها، وذلك لغرض تسهيل أعمال الباحثين في حصر كل ما يحتاجونه من معلومات.\r\n\r\nوفي ختام مقدمتنا الموجزة هذه نؤكد بأن هذا الكتاب يمكن أن يعتمد ويدرس في مختلف الأقسام العلمية والاختصاصات، في الجامعات والمعاهد والكليات، لطلبتها على مستوى الدراسات الجامعية الأولية منها والعليا. حيث أنه يعالج العديد من جوانب وطرائق البحث العلمي، أن لم يكن جميعها. كذلك فأن هذا الكتاب هو مفيد ومهم لجميع المعنيين بكتابة البحوث، من مختلفة شرائح المجتمع في العديد من المؤسسات.', '-llmy-wstkhdm-msdr-lmlwmt.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:30:52', '2015-12-14 19:32:51'),
(19, 1, 'التجارة الإلكترونية وتطبيقاتها', '', '1', '9789957970338', 0, '2015', '392ص', '', '', 'ar', NULL, 0, 'NONE', 'أولاً، وقبل كل شيء ليس من السهل الخوض في موضوع هام، من جهة، وشائك، من جهة أخرى، كموضوع التجارة الإلكترونية، والكتابة عنها. إنه نوع من التحدي، ولكنه تحدٍ مهم ومفيد. فمن المعروف أن الدول المختلفة، الكبيرة منها والصغيرة، والغنية منها والفقيرة، أو بالأحرى محدودة الدخل، سعت، وتسعى إلى الدخول في تجربة التجارة الإلكترونية، والاستفادة من معطياتها. حيث إنها، أي التجارة الإلكترونية أمر لابد منه، في ضوء المعطيات الكبيرة، التي لا يمكن المضي بدونها، والفرص الذهبية التي لا يمكن السكوت عنها، والتطورات الإيجابية التي يمكن الاستمرار من دونها. وقد يرى البعض بأنني كمؤلف لهذا الكتاب قد ذهبت بعيداً في عرضي لواقع وتأثير التجارة الإلكترونية، بكل أبعادها وتطبيقاتها. وجوابي على ذلك: نعم، لأنني حين أتطلع إلى نجاحات التجارة الإلكترونية، في دول مختلفة، كبيرة منها، ومتوسطة وصغيرة، انخرطت في ركب التجارة الإلكترونية، ودخلت في تطبيقاتها المتعددة، ابتداء بالنشر الإلكتروني وانتهاء بالسياحة الإلكترونية والحجوزات الإلكترونية، ومروراً بالبنوك الإلكترونية، والتعليم الإلكتروني، والإعلانات الإلكترونية، والتسوق الإلكتروني، وبكل الفرص التي توفرها هذه التطبيقات وغيرها للبلد والمجتمع المعني بهذه التطبيقات.', 'ltjr-llktrwny-2.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:35:59', '2015-12-14 19:36:09'),
(20, 1, 'علم المعلومات والنظم والتقنيات', '', '1', '9789957970055', 0, '2015', '', '', '1299', 'ar', NULL, 9, 'NONE', 'من الجدير بالتذكير، أولاً، أن المعلومات والإنسان هما صنوان لا يفترقان. فمنذ وجوده، أي الإنسان، على هذه البسيطة وهو بحاجة الى المعلومات. وقد استعان بها لتكييف حياته، من جهة، ولقهر قوى الطبيعة، التي كانت تتحكم به، وبما يحيط به بدرجة كبيرة، من جهة ثانية. وعلى هذا الأساس فقد سعى الإنسان، وهو في جوف الكهوف، إلى نقل خبراته وتجاربه الحياتية الى الأجيال التي تلته، من خلال استخدام الرسومات والكتابات الصورية، على الجدران، مجسداً فيها الظواهر الطبيعية التي تعرض لها، مثلاً، والتي وقفت عائقاً أمام ممارسته حياته الطبيعية. ولكن عندما قرر الإنسان أن يكون عنصراً فاعلاً في بناء الأرض وإدامة الحياة، خرج من كهفه ليصبح منتجاً، بعد أن كان مستهلكاً للثروات الطبيعية التي وهبها الله U له، ولبقية الكائنات، بدءا بالزراعة لينتج الغذاء. وهذا الانتقال هو الذي دفعت به الى عصر جديد، سمي بالعصر الزراعي، والذي تطلب منه في ذلك العصر جمع وادخار معلومات وفيرة، ومعمقة، عن الحالات التي كان عليه أن يمارسها، في معالجة المشكلات التي كانت تعترضه خلال ممارسته للزراعة. وعلى هذا الأساس، ومن هذا المنطلق، فإننا نستطيع القول إنه بزغت أهمية المعلومات للإنسان.', 'lm-lmlwmt-wlnzm-wlmlwmt-llfrz.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:39:12', '2015-12-14 19:39:12'),
(21, 1, 'الارشيف الصحفي واتجاهاته الحديثة', '', 'الطبعة الأولى', '9789957069179', 0, '2013', '240ص', '', '1284', 'ar', NULL, 0, 'NONE', 'دأبت المؤسسات الصحفية على تأسيس أقسام لحفظ النتاج الفكري لها وللمؤسسات الأخرى والهدف من ذلك إيجاد ذاكرة خارجية يهتدي بها الصحفيون عند الكتابة عن موضوع معين للتحقق أو لإضافة معلومات معينة لخبر أو للموضوع الذي تمت الكتابة عنه وقد انطلقوا بذلك من مبدأ قوانين تطور العلم على أساس أن هذه القوانين تساعد الإنسان على وضع معارفه موضع التطبيق ويحكم العلم بقوانين خاصة بالتطور والتي ينبغي معرفتها لنجاح العمل في أي حقل من حقول المعرفة ومن هذه القوانين (قانون استمرارية العلم التاريخية) وهو من القوانين المهمة في تطوير العلم فعلى سبيل المثال لو اعتمد الصحفيون في كل مؤسسة إعلامية على أنفسهم فقط في تجميع المعلومات وإعادة صياغتها فإن الكتابة عن هذا الموضوع سوف تكون هامشية ولا تقدم شيئا للقارئ، إذ أن انجازات الكتاب السابقين تعد الأساس الذي يبني عليه الصحفيون المعاصرون عملهم وبناءً على ذلك فإن الصحفيين المعاصرين لا ينهمكون فقط في اكتشاف بيانات علمية حديثة فحسب بل في تصنيف البيانات التي سبق جمعها من قبل زملائهم وتقييمها وتصحيحها وجعلها في متناول أيدي معاصريهم من الصحفيين والقراء. ولتحقيق هذه الغاية يتم الاعتماد بصورة رئيسة على الصيغة التي تنشر بها هذه المعلومات بين الصحفيين المعاصرين وتنقل بواسطتها إلى الأجيال اللاحقة.', '200851019_0.jpg.jpg', NULL, 0, 1, NULL, 0, '', '2015-12-14 19:41:36', '2015-12-14 19:41:36');

-- --------------------------------------------------------

--
-- Structure de la table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(19, 27, 1),
(2, 25, 1),
(4, 27, 1),
(18, 27, 1),
(17, 25, 1),
(16, 25, 1),
(21, 28, 1),
(20, 28, 1);

-- --------------------------------------------------------

--
-- Structure de la table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Structure de la table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(2, 1, 1),
(16, 1, 1),
(4, 1, 1),
(20, 1, 1),
(19, 1, 1),
(18, 1, 1),
(17, 1, 1),
(21, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'معلومات المكتبة', '', 'libinfo', '2009-09-13 19:48:16', '2015-05-07 22:54:42', '1'),
(2, 'المساعدة في البحث', '', 'help', '2009-09-13 19:48:16', '2015-05-07 22:55:16', '1'),
(3, 'مرحبا بمدير النظام', '<table style="width: 100%;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon biblioIcon" href="?mod=bibliography"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الفهرسة</div>\r\n<span id="result_box" lang="ar"><span class="hps">وحدة</span> <span class="hps alt-edited">الفهرس,</span> <span class="hps alt-edited">تتيح لك</span> <span class="hps">إدارة البيانات</span> <span class="hps">الببليوغرافية</span> <span class="hps alt-edited">لمكتبتك</span></span>.وتشمل إدارة المواد والنسخ ليمكن إستخدامها وتداولها<br /></td>\r\n<td width="5%" valign="top"><a class="icon circulationIcon" href="?mod=circulation"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">التداول</div>\r\nلإدارة عملية الإعارة وإسترجاع المواد<br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon memberIcon" href="?mod=membership"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">المستفيدين</div>\r\nلإضافة المستفيدين الجدد وإدارة عضويتهم<br /><br /></td>\r\n<td width="5%" valign="top"><a class="icon stockTakeIcon" href="?mod=stock_take"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الجرد</div>\r\nلإدارة عمليات الجرد<br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon masterFileIcon" href="?mod=master_file"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الملف الرئيسي<br /></div>\r\nملف مهم جدا لكل من عملية الفهرسة وتعيين اشكال وثائق المكتبة وغيرها<br /></td>\r\n<td width="5%" valign="top"><a class="icon systemIcon" href="?mod=system"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">النظام</div>\r\nلتكوين وإعدادت كل تطبيقات النظام العامة<br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon reportIcon" href="?mod=reporting"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">التقارير</div>\r\n<p>لعمل تقارير المكتبة المفيدة</p>\r\n<br /></td>\r\n<td width="5%" valign="top"><a class="icon serialIcon" href="?mod=serial_control"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">إدارة الدوريات<br /></div>\r\nلإدارة الدوريات وإشتراكاتها<br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'adminhome', '2009-09-13 19:48:16', '2015-05-07 22:51:52', '1'),
(4, 'معلومات الصفحة الرئيسية', '<p>أهلا بكم في المكتبة الرئيسية للمطالعة العمومية&nbsp; لولاية الجلفة جمال الدين بن سعد</p>\r\n<div id="libraryName"><br /></div>\r\n<div id="libraryName"><br /></div>', 'headerinfo', '2009-09-13 19:48:16', '2015-05-07 22:57:30', '1'),
(5, 'عن النظام', '', 'about_slims', '2010-08-28 23:29:55', '2015-05-07 22:53:32', '1'),
(7, 'رخصة الإستخدام', '', 'lisensi_slims', '2010-08-29 04:04:33', '2015-05-07 22:53:06', '1'),
(8, 'البرمجيات الحرة', '', 'opensource', '2010-08-29 04:05:16', '2015-05-07 22:53:54', '1');

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`) VALUES
(7, 4, NULL, 1, 'B00007', 'INV/B00007', '0000-00-00', '0', '', 'SL', '0000-00-00', '0', '', 1, '', 450000, 'Rupiah', '0000-00-00', '2008-12-26 22:18:29', '2008-12-26 22:18:29');

-- --------------------------------------------------------

--
-- Structure de la table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Structure de la table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(27, 'عامر ابراهيم قنديلجي', NULL, 'p', NULL, '2015-12-14', '2015-12-14'),
(28, 'حسان رضا النجار', NULL, 'p', NULL, '2015-12-14', '2015-12-14'),
(25, 'ايمان فاضل السامرائي', NULL, 'p', NULL, '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'مرجع', '2007-11-29', '2015-05-06'),
(2, 'كتاب', '2007-11-29', '2015-05-06'),
(3, 'رواية', '2007-11-29', '2015-05-06');

-- --------------------------------------------------------

--
-- Structure de la table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'أسبوعي', 'ar', 1, 'week', '2009-05-23', '2009-05-23'),
(3, 'فصلية', 'ar', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'شهري', 'ar', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'نصف شهرية', 'ar', 2, 'month', '2009-05-23', '2009-05-23'),
(8, 'سنوي', 'ar', 1, 'year', '2009-05-23', '2015-05-09');

-- --------------------------------------------------------

--
-- Structure de la table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'كتاب', NULL, '2015-05-04', '2015-05-07'),
(8, 'GA', 'لعبة', NULL, '2015-05-04', '2015-05-07'),
(11, 'MA', 'خريطة', NULL, '2015-05-04', '2015-05-07'),
(15, 'MP', 'صورة', NULL, '2015-05-04', '2015-05-07'),
(16, 'MS', 'شريحة ميكروسكوب', NULL, '2015-05-04', '2015-05-07'),
(26, 'CF', 'ملف كمبيوتر', NULL, '2015-05-04', '2015-05-07'),
(28, 'CD', 'قرص ضوئي', NULL, '2015-05-04', '2015-05-07');

-- --------------------------------------------------------

--
-- Structure de la table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'تحت الصيانة', 'a:1:{i:0;s:1:"1";}', 1, 0, '2015-12-12', '2015-12-12'),
('NL', 'ليس للإعارة', 'a:1:{i:0;s:1:"1";}', 1, 0, '2015-12-12', '2015-12-12'),
('MIS', 'مفقود', NULL, 1, 1, '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Contenu de la table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2015-12-12', '2015-12-12'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2015-12-12', '2015-12-12'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('ar', 'arabic', '2015-12-12', '2015-12-12'),
('en', 'English', '2015-12-12', '2015-12-12'),
('id', 'Indonesia', '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'مكتبتي', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'طالب جامعي', 2, 7, 1, 2, 365, 1, 0, 0, '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Contenu de la table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'الفهرسة', 'bibliography', 'إدارة الفهرسة والتسجيلات البيبليوغرافية'),
(2, 'التداول', 'circulation', 'لإدارة تداول وإسترجاع المواد'),
(3, 'المستفيدين', 'membership', 'لإضافة المستفيدين وإدارتهم'),
(4, 'الملف الرئيسي', 'master_file', 'الملف الأستاذ ملف مهم للمساعدة في عمليات الفهرسة وغيرها'),
(5, 'الجرد', 'stock_take', 'لإدارة عمليات الجرد'),
(6, 'النظام', 'system', 'للقيام بكل الإعدادت العامة والنسخ الإحتياطي'),
(7, 'التقارير', 'reporting', 'للقيام بكل التقارير المفيدة للمكتبة'),
(8, 'إدارة الدوريات', 'serial_control', 'لإدارة المطبوعات الدورية');

-- --------------------------------------------------------

--
-- Structure de la table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(9, 'عمان', '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(12, 'دار مسيرة', '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'علم المكتبات', 't', NULL, '', '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Contenu de la table `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(2, 'حوسبة ( اتمتة ) المكتبات', 'الطبعة الثانية', '9789957062125', 'ايمان فاضل السامرائي', 'علم المكتبات -  -  - ', 'كتاب', 'دار مسيرة', 'عمان', 'arabic', '125', '', NULL, '2010', 'لقد كان موضوع استخدام الحواسيب في المكتبات ومراكز الوثائق والمعلومات، ولا يزال إلى حد ما، من الأمور التي يدور حولها الجدل ، لا في عالمنا العربي فحسب بل وحتى في العالم الغربي، الذي سبقنا في الحوسبة سنين طويلة.\r\n\r\nومن منطلق أهمية حوسبة إجراءات وخدمات المكتبات ومراكز الوثائق والمعلومات وأتمتها، فقد اشتمل الكتاب على محاور وفصول عدة. فبعد التعريف بمفاهيم أساسية عن حوسبة المكتبات، فقد تطرق الباحثان إلى جملة أمور مهمة في هذا المجال، مثل: التخطيط لحوسبة المكتبات وما يواكب ذلك من خطوات التخطيط للحوسبة، وتهيئة الأجهزة والبرامجيات المناسبة، وتأمين البيئة التكنولوجية المناسبة بكل أبعادها وجوانبها. كذلك عالج الباحثان موضوعات تحليل النظم المطلوبة وتصميمها، وبناء قواعد البيانات، وما يعنيه ذلك. ثم التدريب على مستوى المستفيدين والعاملين في المكتبات، وما يعنيه ذلك في مجال حوسبة المكتبات.\r\n\r\nأما تطبيقات الحوسبة في المكتبات، فقد اشتملت على حوسبة الفهارس، وحوسبة الإعارة، ونظم التزويد والاختيار المحوسبة المناسبة. إضافة إلى أدوات ووسائل حوسبة المكتبات المختلفة على مستوى المكانز وملف الإسناد وتركيبة تراسل البيانات وغيرها. وكذلك تعريف بأهم الحزم والبرامجيات الجاهزة المستخدمة في مجال المكتبات ومراكز المعلومات.\r\n\r\nكذلك فقد تطرق الباحثان إلى موضوعات شبكات المكتبات المحوسبة، وفوائدها ومعوقاتها، ومجالات التعاون، والمعايير الموحدة والمواصفات المطلوبة لشبكات المكتبات. في جانب آخر فقد كان لخدمات المكتبات المحوسبة مجال واسع في صفحات الكتاب، من حيث تأمين مصادر المعلومات الإلكترونية واستثمار مكانات الإنترنت في خدمات المكتبات. وكذلك كان أمن المعلومات والفيروسات جانب آخر من الكتاب، إضافة إلى تقويم حوسبة المكتبات.\r\n\r\nوقد اشتمل الجزء الأخير من الكتاب على تطبيقات عملية في مجال حوسبة المكتبات، اشتمل على ثمانية أقسام مفيدة للطلبة والعاملين في مجال المكتبات والمعلومات.', NULL, NULL, NULL, '125', 0, 1, NULL, '24 سم،336 ص', '200850842_0.jpg.jpg', '2007-11-29 15:53:35', '2015-12-14 19:33:21'),
(4, 'المعجم الموسوعي لتكنولوجيا المعلومات والاتصالات والانترنت', '', '9789957065768', 'عامر ابراهيم قنديلجي', 'علمالمكتبات', 'كتاب', 'دار مسيرة', '', 'arabic', '005.4/32 22', '', 'مكتبتي', '2016', 'تزخر الكتابات والمصادر والأدبيات المتخصصة في مجال تكنولوجيا المعلومات المعاصرة، العربية منها والإنكليزية، بالعديد من المصطلحات والتعبيرات الفنية والتقنية، التي يحتاج الطلبة والمهتمون بالموضوع إلى التعرف على ماهيتها والمقصود بها، خاصة وإن هنالك حركة متطورة، وخلطا في الاستخدامات والتعبيرات والتعريفات، بين عدد ليس  بالقليل من المصادر والأدبيات المتوفرة، نظراً للتوسع الكبير والحاجة المستمرة في استخدام مثل هذه المصطلحات، والاجتهادات والتفسيرات التي يذهب إليها بعض الكتاب والمتخصصون في المجالات المختلفة والمتداخلة لتكنولوجيا المعلومات. وقد وجد الكاتب أن التعريبات والاجتهادات المختلفة، والمتباينة، في كثير من الأحيان، بين هذه التعريبات والترجمات للمصطلحات، المتعارف على معظمها باللغة الإنكليزية واللاتينية، أدت وتؤدي إلى الكثير من الخلط والارتباك عند المهتمين في هذا المجال والطلبة المعنيين بدراسته، في منطقتنا العربية، وما أكثر مثل هؤلاء المهتمين في هذا المجال الحيوي المهم، في هذه الأيام، حيث نواجه فيها تحركاً سريعاً وثورة حقيقية في مجال المعلومات وتكنولوجياتها. وعلى هذا الأساس فقد وجد الكاتب ضرورة تنظيم هذا المعجم الموسوعي، وترتيب مداخله بموجب التسلسل الهجائي للغة الإنكليزية، حيث إن المصطلحات الموجودة في تلك اللغة متعارف عليها وموحدة، بخلاف العديد من المصطلحات المترجمة إلى لغتنا العربية. وكمثال على ذلك فإنه إذا ما تطرقنا إلى مصطلح (compact disk) فإننا سنرى عدة ترجمات عربية لها، في مختلف مناطقنا العربية، بل وفي البلد الواحد، كالأقراص المتراصة، والأقراص المكتنزة، أو المضغوطة، أو المدمجة، أو الليزرية، أو المليزرة ...الخ. وهكذا الحال بالنسبة إلى ترجمة مصطلحات أخرى. ومن هذا المنطلق فقد تم ترتيب قائمة المحتويات، التي اشتملت على أكثر من (500) مصطلح، بطريقة هجائية متسلسلة، حسب ورود المصطلح باللغة الانكليزية.\r\n', NULL, 'B00007', 'مرجع', '126', 0, 1, NULL, '728 ص', 'lmjm-lmwswy.jpg.jpg', '2007-11-29 16:14:44', '2015-12-14 19:19:44'),
(16, 'قواعد البيانات ونظم المعلومات في المكتبات ومراكز المعلومات', 'الطبعة الثانية', '9789957062644', 'ايمان فاضل السامرائي', 'علم المكتبات', 'كتاب', '', 'عمان', 'arabic', '125', '', NULL, '2009', 'ظهرت العديد من المؤلفات في مجال قواعد البيانات ولكنها غالبا من وجهة نظر المتخصصين في تكنولوجيا المعلومات وتطبيقات قواعد البيانات في مختلف المؤسسات، أما في بيئة المكتبات ذات الخصوصية في نوعية البيانات والمعلومات وأسلوب التعامل معها ومعالجتها واسترجاعها فهي محدودة جداً.\r\n\r\nإن نظم ادارة قواعد البيانات وأنواع القواعد وبناءها في جميع أنواع المكتبات ومراكز المعلومات لها خصوصية نابعة من أهداف المكتبات ومراكز المعلومات والخدمات التي تقدمها والمخرجات المطلوبة. لذا جاءت فكرة هذا الكتاب الذي توزعت معلوماته على جزئين رئيسين، خصص الجزء الأول منه لقواعد البيانات وإدارتها، وقد اشتمل الجزء الأول على ثلاثة محاور، حيث تناول المحور الأول على مفاهيم ومصطلحات قواعد البيانات من تعريف لمفهوم البيانات والمعلومات وقاعدة البيانات ومكوناتها، وكيف يمكن أن تكون قاعدة البيانات ناجحة، وأهمية وقيمة تطور قواعد البيانات وارتباطها بالحواسيب ونظم قاعدة البيانات.\r\n\r\nوقد تناول المحور الثاني نظم إدارة قواعد البيانات حيث عالج مراحل إدارة قواعد البيانات ومهام مدير قاعدة البيانات، وفوائد اعتماد قواعد البيانات في المكتبات ومراكز المعلومات، وتحديد المعنيين بقواعد البيانات في المكتبات ومراكز المعلومات، ووظائف نظم ادارة المكتبات ومراكز المعلومات، وأنواع نظم إدارة المكتبات.\r\n\r\nوفي المحور الثالث الذي اشتمل على أنواع قواعد البيانات حيث عالج أنواع هذه القواعد من حيث طبيعة البيانات، والشكل، والاتاحة. كما اشتمل على نماذج لقواعد البيانات المتاحة على الخط المباشر والانترنت، وخطوات استراتيجية البحث.\r\n\r\nأما الجزء الثاني الذي خصص للبرمجيات المعتمدة في بناء قواعد البيانات في المكتبات ومراكز المعلومات فقد اشتمل على ثلاثة محاور. كرس المحول الأول لمستلزمات قواعد البيانات من بيانات وأجهزة وبرمجيات ومستفيدين والبيئة التكنولوجية للعاملين في مجال المحوسب. بينما تناول المحور الثاني أنواع البرمجيات من حيث الوظائف، والأجهزة، وطريقة الأعداد، حسب مجالات استخدامها، وحسب أسلوب معالجتها للبيانات، كما وتناول المحور عرض لميزات استخدام حزم البرمجيات، وأسس اختيار حزمة البرمجيات، كما اشتمل على لغات البرمجة بأنواعها المختلفة.\r\n\r\nأما المحور الثالث الذي خصص للبرمجيات المستخدمة في المكتبات ومراكز المعلومات، فقد اشتمل على عرض لأحد عشر نظاما من الأنظمة المتكاملة لإدارة المكتبات ومراكز المعلومات الأكثر استخداما في المكتبات ومؤسسات المعلومات العربية. \r\n\r\nلقد وجدت الباحثتان ومن خبرتهما في التعامل مع قواعد البيانات الخاصة بالمكتبات ومراكز المعلومات ضرورة تقديم معلومات تفصيلية مفيدة للذين يتعاملون مع قواعد البيانات في جميع أنواع المكتبات من حيث الإدارة والبناء والتصميم باعتماد النظم الجاهزة، وعرض موسع لعدد من قواعد البيانات المتاحة عبر الخط المباشر أو المصممة محليا باعتماد الحزم Packages الجاهزة كي تستطيع المكتبات بقطاعاتها المختلفة الجامعية والعامة والمدرسية والمتخصصة من التعامل مع قواعد البيانات حسب رغبتهم واحتياجاتهم.', NULL, NULL, NULL, '125', 0, 1, NULL, '256', '200850844_0.jpg.jpg', '2015-12-14 19:24:16', '2015-12-14 19:24:16'),
(17, 'شبكات المعلومات والاتصالات', 'الطبعة الثانية', '9789957064846', 'ايمان فاضل السامرائي', 'علم المكتبات', 'كتاب', 'دار مسيرة', 'عمان', 'arabic', '125', '', NULL, '', 'مما لا شك فيه إننا لازلنا نعيش في عصر المعلومات، أو بالأحرى عصر ثورة المعلومات، بعد أن ودعنا العصر الصناعي، أو عصر الثورة الصناعية، وبعد أن ودع هذا الأخير عصر الزراعة. وعصر ثورة المعلومات الذي نعيش قد ارتبط بتكنولوجيا المعلومات، التي أصبحت جزءاً لا يتجزأ من ثورة المعلومات. وبعبارة أوضح فإنه من دون تكنولوجيا المعلومات فلن تكون هنالك ثورة للمعلومات. وثورة المعلومات، وتكنولوجيا المعلومات تعنيان، من ضمن ما تعنيان، تأمين المعلومات المناسبة للمستفيد المناسب، في الوقت المطلوب،السريع وما المناسب، ليستطيع أن ينجز عمله، أو يتخذ قراره أو يقدم منتجاته أو خدماته في خضم عالم كثير ومزدحم بالمنافسة.\r\n\r\nمن جانب آخر فإنه لا يمكن لتكنولوجيا المعلومات أن تؤدي مهامها وتؤتي أوكلها، من دون شبكات المعلومات المسئوولة عن نقل وإيصال أفضل وأسرع المعلومات للمستفيد، أياً كان موقعه ومكانه. وعلى هذا الأساس فإننا نستطيع القول بأن شبكات المعلومات هي جزء لا يتجزأ من تكنولوجيا المعلومات، بل وأن شبكات المعلومات، المعتمدة على تكنولوجيا الاتصالات، مضافاً لها تكنولوجيا الحواسيب، التي تعمل على معالجة وتخزين الكم الهائل من المعلومات، هما الركيزتان الأساسيتان لتكنولوجيا المعلومات. وهذه الأخيرة، أي تكنولوجيا المعلومات، هي الاطار العام والركن الأساس لثورة المعلومات المعاصرة.\r\n\r\nومن هنا تأتي أهمية هذا الكتاب، الذي اشتمل في فصله الأول على التعريف بشبكات المعلومات، وفوائدها والمجالات التعاونية لاستخدامها، ومستلزمات بناءها، ومعوقات تنفيذها. وكذلك طرق تقويم الخدمات التي تقدم من خلالها.\r\n\r\nواشتمل الفصل الثاني على أنواع شبكات المعلومات المختلفة، كشبكات المناطق المحلية، والواسعة والمدنية، والإنترنت، وكذلك الإنترانت والأكسترانت. فضلاً عن ذلك فقد تطرق الكاتبان إلى التركيبة البنيوية للشبكات، أي أشكال الشبكات، كالشبكات النجمية والخطية والدائرية والهرمية.\r\n\r\nوجاء الفصل الثالث ليتطرق فيه الكاتبان إلى تكنولوجيا تناقل البيانات في شبكات المعلومات، وتطرقا إلى الاتصالات عن بعد، ومفهومها، وعناصرها ووظائفها. ثم الوسائل السلكية واللاسلكية في شبكات المعلومات.\r\n\r\nومن المعيب أن نتكلم عن موضوع شبكات المعلومات من دون أن نتطرق إلى الشبكة العالمية/ الإنترنت، لأنها شبكة الشبكات، أو كما يحلو للبعض أن يسميها أم الشبكات. وعلى هذا الأساس فقد  جاء الحديث في الفصل عن  مكونات الإنترنت وتركيبتها وفوائدها الإتصالية،. وكذلك فقد تطرق الكاتبان إلى الشبكة العنكبوتية العالمية، كجزء مهم من الشبكة العالمية. وأخيراً بعض من التطبيقات الإتصالية للشبكة العالمية.\r\n\r\nأما الفصل الخامس فق جاء تحت عنوان أمن شبكات المعلومات. وتطرق فيه الكاتبان إلى الجرائم عبر الشبكا، و أنواع الجرائم، كالقرصنة والاختراق، والجرائم المالية والاقتصادية، وتجاوزات حقوق الملكية الفكرية. ثم مشكلات وتجاوزات على الحرية الفردية، ثم المخاطر الصحية التي يتعرض لها الأفراد عن طريق استخدام الشبكات ووحداتها الحاسوبية. من جانب آخر فقد اشتمل هذا الفصل على الفيروسات التي تتعرض لها الشبكات الحاسوبية، بأنواعها المختلفة، وطرق حماية الشبكات منها. وأخيراً القوانين والتشريعات الخاصة بمواجهو جرائم الشبكات.\r\n\r\nواشتمل الفصلين السادس والسابع على عدد من التجارب العربية والإقليمية لشبكات المعلومات. فكانت هنالك شبكة المكتبات المصرية، وعدد من شبكات المكتبات الخليجية، ومن ثم أهم المعالم الأساسية للشبكة العربية للمعلومات، التي طال انتظارنا لها. ثم بعض من التجارب العالمية والإقليمية الرائدة لشبكات المعلومات.\r\n\r\nأم الفصل الثامن والأخيرفقد تم تكريسه إلى موضوعين، هما وحدات القياس المستخدمة في تراسل البيانات عبر الشبكات، ثم أهم المصطلحات والتعاريف المهمة المستخمة في مجال الشبكات والاتصالات.', NULL, NULL, NULL, '125', 0, 1, NULL, '320 ص', '200850838_0.jpg.jpg', '2015-12-14 19:27:48', '2015-12-14 19:27:48'),
(18, 'البحث العلمي واستخدام مصادر المعلومات التقليدية والالكترونية', 'الطبعة السادسة', '', 'عامر ابراهيم قنديلجي', 'علم المكتبات', 'كتاب', '', '', 'arabic', 'NONE', '', NULL, '2015', 'إن هذا الكتاب يمكن أن يعتمد ويدرس في مختلف الأقسام العلمية للكليات، ولطلبة الدراسات الجامعية الأولية منها والعليا، لأنه يعالج العديد من جوانب وأساسيات البحث العلمي، أن لم يكن جميعها. كذلك فأن الكتاب مفيد ومهم لجميع المعنيين بكتابة البحوث من مختلف شرائح المجتمع في العديد من المؤسسات.\r\n\r\nوقد حرص الكتاب أن تكون الأمثلة والنماذج المستخدمة في المتن تخص موضوعات شتى لتسهيل متابعة معلوماته والاستفادة منه.\r\n\r\nولقد حاول الكاتب أن يعرف القراء والباحثين، بمختلف مستوياتهم وشرائحهم وتخصصاتهم، بأهم جوانب البحث العلمي واستخدام مصادر المعلومات. وقد ابتدأ بالكتابة عن تطور البحث العلمي ومستلزماته وأنواعه. وما يتعلق بتطور التفكير الإنساني وتطور المعرفة. على اعتبار بأن البحث يولد معلومات جديدة تقود إلى المعرفة، وإن المعرفة ضرورية ومطلوبة للفهم والإدراك البشري. وإذا ما توافرت المهارة البحثية البشرية فأن ذلك يقود إلى تأمين الحلول العلمية المناسبة للمشاكل والمعوقات التي تواجهها المجتمعات، بكل جوانبها الاقتصادية والاجتماعية والعلمية والتنموية، وكل ما يعترض حياة الإنسان ومسيرته، في كل هذه المجالات وغيرها، وهذا ما يساعده في اتخاذ الخطوات المناسبة لمواجهة مثل تلك المشاكل والتغلب عليها.\r\n\r\nوبعد التطرق إلى بعض التعاريف بجوانب الموضوع المختلفة والتعرف على خلفيته التاريخية استعرض الكاتب جانبين أساسيين في البحث العلمي هما المتطلبات والمستلزمات الضرورية التي تجعل من البحث جيداً وموفقاً ومتميزاً على غيره من البحوث، ثم الصفات التي يجب أن يتسم بها الباحث العلمي نفسه لكي يكون ناجحاً ومؤهلاً للكتابة عن مشكلة ما أو موضوع ما مطروح عليه. ومن ثم التطرق الى مختلف أنواع البحوث، والمقارنة بينها، وخصوصاً البحوث الكمية والبحوث النوعية. ومن ثم بحوث العلوم الإنسانية وبحوث العلوم الصرفة والتطبيقية.\r\n\r\nكذلك فقد ثم استعراض خطة البحث العلمي والخطوات المطلوبة له، ابتداء بتحديد مشكلة البحث واختيار موضوعها، وانتهاء بكتابة تقرير البحث، مروراً بالقراءات الاستطلاعية ومراجعة البحوث السابقة، ثم صياغة الفرضيات، وتصميم خطة البحث ومنهجية، وجمع المعلومات وتحليلها واستنباط الاستنتاجات والمقترحات عنها. بالإضافة إلى التطرق إلى إعداد خطة البحث النوعي.\r\n\r\nوغطى الكتاب في الفصول أخرى من هذا الكتاب جوانب أساسية من مناهج البحث، إبتداء بالمنهج الوثايقي التحليلي، والمنهج الوصفي المسحي، ودراسة الحالة، والمنهج التجريبي، ومنهج تحليل المضمون والامنهج المقارن، ومنهجي دراسة الأعراق والظواهر، وانتهاء بالبحث الإجرائي النوعي. ثم تطرق إلى موضوع المعاينة والعينات في البحث العلمي. ثم أساليب جمع البيانات والمعلومات. وبعدها طرق تحليل البيانات وعرضها. وخصص الكاتب جانباً آخر لوصف إعداد التقرير النهائي للبحث، ولغته وأسلوبه، وفنون التعامل مع الإشارات والمختصرات، أقسامه المختلفة ومحتوياته والجوانب الأخرى التي تظهره بالمستوى الجيد واللائق، ومن ثم مناقشته.\r\n\r\nتطرق الكاتب إلى جانب من جوانب إعداد البحث العلمي، لطالما أغفلها العديد من كتاب البحث العلمي والمتخصصين والمهتمين به، ألا وهي مصادر وأوعية المعلومات المطلوبة للبحث العلمي واستخداماتها، بأنواعها الورقية التقليدية لمختلفة، ومن ثم التعامل مع مصادر المعلومات الإلكترونية والإنترنت. كذلك فقد استعرض الكاتب، في فصل لاحق إلى موضوع توثيق المصادر والمعلومات المستشهد بها في البحث، بمختلف أنواعها وأشكالها. وأخيراً لم ينسى الكاتب الإشارة إلى موضوع استخدام الكتبة ومعرفة تنظيم مصادر المعلومات وفهرستها وتصنيفها وترتيب موادها، وذلك لغرض تسهيل أعمال الباحثين في حصر كل ما يحتاجونه من معلومات.\r\n\r\nوفي ختام مقدمتنا الموجزة هذه نؤكد بأن هذا الكتاب يمكن أن يعتمد ويدرس في مختلف الأقسام العلمية والاختصاصات، في الجامعات والمعاهد والكليات، لطلبتها على مستوى الدراسات الجامعية الأولية منها والعليا. حيث أنه يعالج العديد من جوانب وطرائق البحث العلمي، أن لم يكن جميعها. كذلك فأن هذا الكتاب هو مفيد ومهم لجميع المعنيين بكتابة البحوث، من مختلفة شرائح المجتمع في العديد من المؤسسات.', NULL, NULL, NULL, '128', 0, 1, NULL, '384', '-llmy-wstkhdm-msdr-lmlwmt.jpg.jpg', '2015-12-14 19:30:52', '2015-12-14 19:32:51'),
(19, 'التجارة الإلكترونية وتطبيقاتها', '1', '9789957970338', 'عامر ابراهيم قنديلجي', 'علم المكتبات', 'كتاب', '', '', 'arabic', 'NONE', '', NULL, '2015', 'أولاً، وقبل كل شيء ليس من السهل الخوض في موضوع هام، من جهة، وشائك، من جهة أخرى، كموضوع التجارة الإلكترونية، والكتابة عنها. إنه نوع من التحدي، ولكنه تحدٍ مهم ومفيد. فمن المعروف أن الدول المختلفة، الكبيرة منها والصغيرة، والغنية منها والفقيرة، أو بالأحرى محدودة الدخل، سعت، وتسعى إلى الدخول في تجربة التجارة الإلكترونية، والاستفادة من معطياتها. حيث إنها، أي التجارة الإلكترونية أمر لابد منه، في ضوء المعطيات الكبيرة، التي لا يمكن المضي بدونها، والفرص الذهبية التي لا يمكن السكوت عنها، والتطورات الإيجابية التي يمكن الاستمرار من دونها. وقد يرى البعض بأنني كمؤلف لهذا الكتاب قد ذهبت بعيداً في عرضي لواقع وتأثير التجارة الإلكترونية، بكل أبعادها وتطبيقاتها. وجوابي على ذلك: نعم، لأنني حين أتطلع إلى نجاحات التجارة الإلكترونية، في دول مختلفة، كبيرة منها، ومتوسطة وصغيرة، انخرطت في ركب التجارة الإلكترونية، ودخلت في تطبيقاتها المتعددة، ابتداء بالنشر الإلكتروني وانتهاء بالسياحة الإلكترونية والحجوزات الإلكترونية، ومروراً بالبنوك الإلكترونية، والتعليم الإلكتروني، والإعلانات الإلكترونية، والتسوق الإلكتروني، وبكل الفرص التي توفرها هذه التطبيقات وغيرها للبلد والمجتمع المعني بهذه التطبيقات.', NULL, NULL, NULL, '', 0, 1, NULL, '392ص', 'ltjr-llktrwny-2.jpg.jpg', '2015-12-14 19:35:59', '2015-12-14 19:36:09'),
(20, 'علم المعلومات والنظم والتقنيات', '1', '9789957970055', 'حسان رضا النجار', 'علم المكتبات', 'كتاب', '', 'عمان', 'arabic', 'NONE', '', NULL, '2015', 'من الجدير بالتذكير، أولاً، أن المعلومات والإنسان هما صنوان لا يفترقان. فمنذ وجوده، أي الإنسان، على هذه البسيطة وهو بحاجة الى المعلومات. وقد استعان بها لتكييف حياته، من جهة، ولقهر قوى الطبيعة، التي كانت تتحكم به، وبما يحيط به بدرجة كبيرة، من جهة ثانية. وعلى هذا الأساس فقد سعى الإنسان، وهو في جوف الكهوف، إلى نقل خبراته وتجاربه الحياتية الى الأجيال التي تلته، من خلال استخدام الرسومات والكتابات الصورية، على الجدران، مجسداً فيها الظواهر الطبيعية التي تعرض لها، مثلاً، والتي وقفت عائقاً أمام ممارسته حياته الطبيعية. ولكن عندما قرر الإنسان أن يكون عنصراً فاعلاً في بناء الأرض وإدامة الحياة، خرج من كهفه ليصبح منتجاً، بعد أن كان مستهلكاً للثروات الطبيعية التي وهبها الله U له، ولبقية الكائنات، بدءا بالزراعة لينتج الغذاء. وهذا الانتقال هو الذي دفعت به الى عصر جديد، سمي بالعصر الزراعي، والذي تطلب منه في ذلك العصر جمع وادخار معلومات وفيرة، ومعمقة، عن الحالات التي كان عليه أن يمارسها، في معالجة المشكلات التي كانت تعترضه خلال ممارسته للزراعة. وعلى هذا الأساس، ومن هذا المنطلق، فإننا نستطيع القول إنه بزغت أهمية المعلومات للإنسان.', NULL, NULL, NULL, '1299', 0, 1, NULL, '', 'lm-lmlwmt-wlnzm-wlmlwmt-llfrz.jpg.jpg', '2015-12-14 19:39:12', '2015-12-14 19:39:12'),
(21, 'الارشيف الصحفي واتجاهاته الحديثة', 'الطبعة الأولى', '9789957069179', 'حسان رضا النجار', 'علم المكتبات', 'كتاب', '', '', 'arabic', 'NONE', '', NULL, '2013', 'دأبت المؤسسات الصحفية على تأسيس أقسام لحفظ النتاج الفكري لها وللمؤسسات الأخرى والهدف من ذلك إيجاد ذاكرة خارجية يهتدي بها الصحفيون عند الكتابة عن موضوع معين للتحقق أو لإضافة معلومات معينة لخبر أو للموضوع الذي تمت الكتابة عنه وقد انطلقوا بذلك من مبدأ قوانين تطور العلم على أساس أن هذه القوانين تساعد الإنسان على وضع معارفه موضع التطبيق ويحكم العلم بقوانين خاصة بالتطور والتي ينبغي معرفتها لنجاح العمل في أي حقل من حقول المعرفة ومن هذه القوانين (قانون استمرارية العلم التاريخية) وهو من القوانين المهمة في تطوير العلم فعلى سبيل المثال لو اعتمد الصحفيون في كل مؤسسة إعلامية على أنفسهم فقط في تجميع المعلومات وإعادة صياغتها فإن الكتابة عن هذا الموضوع سوف تكون هامشية ولا تقدم شيئا للقارئ، إذ أن انجازات الكتاب السابقين تعد الأساس الذي يبني عليه الصحفيون المعاصرون عملهم وبناءً على ذلك فإن الصحفيين المعاصرين لا ينهمكون فقط في اكتشاف بيانات علمية حديثة فحسب بل في تصنيف البيانات التي سبق جمعها من قبل زملائهم وتقييمها وتصحيحها وجعلها في متناول أيدي معاصريهم من الصحفيين والقراء. ولتحقيق هذه الغاية يتم الاعتماد بصورة رئيسة على الصيغة التي تنشر بها هذه المعلومات بين الصحفيين المعاصرين وتنقل بواسطتها إلى الأجيال اللاحقة.', NULL, NULL, NULL, '1284', 0, 1, NULL, '240ص', '200851019_0.jpg.jpg', '2015-12-14 19:41:36', '2015-12-14 19:41:36');

-- --------------------------------------------------------

--
-- Structure de la table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:12:"سينيان";'),
(2, 'library_subname', 's:60:"نظام إدارة المكتبات مفتوح المصدر";'),
(3, 'template', 'a:2:{s:5:"theme";s:10:"default-dz";s:3:"css";s:29:"template/default-dz/style.css";}'),
(4, 'admin_template', 'a:2:{s:5:"theme";s:10:"meranti-dz";s:3:"css";s:35:"admin_template/meranti-dz/style.css";}'),
(5, 'default_lang', 's:5:"ar_DZ";'),
(6, 'opac_result_num', 's:2:"10";'),
(7, 'enable_promote_titles', 'a:1:{i:0;s:1:"1";}'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:"7200";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:4:"128B";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:"barcode_page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:21:"barcode_items_per_row";i:3;s:20:"barcode_items_margin";d:0.1000000000000000055511151231257827021181583404541015625;s:17:"barcode_box_width";i:7;s:18:"barcode_box_height";i:5;s:27:"barcode_include_header_text";i:1;s:17:"barcode_cut_title";i:50;s:19:"barcode_header_text";s:0:"";s:13:"barcode_fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:17:"barcode_font_size";i:11;s:13:"barcode_scale";i:70;s:19:"barcode_border_size";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:"page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:13:"items_per_row";i:3;s:12:"items_margin";d:0.05000000000000000277555756156289135105907917022705078125;s:9:"box_width";i:8;s:10:"box_height";d:3.29999999999999982236431605997495353221893310546875;s:19:"include_header_text";i:1;s:11:"header_text";s:0:"";s:5:"fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:9:"font_size";i:11;s:11:"border_size";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:"print";a:1:{s:10:"membercard";a:61:{s:11:"card_factor";s:12:"37.795275591";s:21:"card_include_id_label";i:1;s:23:"card_include_name_label";i:1;s:22:"card_include_pin_label";i:1;s:23:"card_include_inst_label";i:0;s:24:"card_include_email_label";i:0;s:26:"card_include_address_label";i:1;s:26:"card_include_barcode_label";i:1;s:26:"card_include_expired_label";i:1;s:14:"card_box_width";d:8.5999999999999996447286321199499070644378662109375;s:15:"card_box_height";d:5.4000000000000003552713678800500929355621337890625;s:9:"card_logo";s:8:"logo.png";s:21:"card_front_logo_width";s:0:"";s:22:"card_front_logo_height";s:0:"";s:20:"card_front_logo_left";s:0:"";s:19:"card_front_logo_top";s:0:"";s:20:"card_back_logo_width";s:0:"";s:21:"card_back_logo_height";s:0:"";s:19:"card_back_logo_left";s:0:"";s:18:"card_back_logo_top";s:0:"";s:15:"card_photo_left";s:0:"";s:14:"card_photo_top";s:0:"";s:16:"card_photo_width";d:1.5;s:17:"card_photo_height";d:1.8000000000000000444089209850062616169452667236328125;s:23:"card_front_header1_text";s:19:"Library Member Card";s:28:"card_front_header1_font_size";s:2:"12";s:23:"card_front_header2_text";s:10:"My Library";s:28:"card_front_header2_font_size";s:2:"12";s:22:"card_back_header1_text";s:10:"My Library";s:27:"card_back_header1_font_size";s:2:"12";s:22:"card_back_header2_text";s:35:"My Library Full Address and Website";s:27:"card_back_header2_font_size";s:1:"5";s:17:"card_header_color";s:7:"#0066FF";s:18:"card_bio_font_size";s:2:"11";s:20:"card_bio_font_weight";s:4:"bold";s:20:"card_bio_label_width";s:3:"100";s:9:"card_city";s:9:"City Name";s:10:"card_title";s:15:"Library Manager";s:14:"card_officials";s:14:"Librarian Name";s:17:"card_officials_id";s:12:"Librarian ID";s:15:"card_stamp_file";s:9:"stamp.png";s:19:"card_signature_file";s:13:"signature.png";s:15:"card_stamp_left";s:0:"";s:14:"card_stamp_top";s:0:"";s:16:"card_stamp_width";s:0:"";s:17:"card_stamp_height";s:0:"";s:13:"card_exp_left";s:0:"";s:12:"card_exp_top";s:0:"";s:14:"card_exp_width";s:0:"";s:15:"card_exp_height";s:0:"";s:18:"card_barcode_scale";i:100;s:17:"card_barcode_left";s:0:"";s:16:"card_barcode_top";s:0:"";s:18:"card_barcode_width";s:0:"";s:19:"card_barcode_height";s:0:"";s:10:"card_rules";s:120:"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>";s:20:"card_rules_font_size";s:1:"8";s:12:"card_address";s:76:"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id";s:22:"card_address_font_size";s:1:"7";s:17:"card_address_left";s:0:"";s:16:"card_address_top";s:0:"";}}}'),
(25, 'spellchecker_enabled', 'b:0;');

-- --------------------------------------------------------

--
-- Structure de la table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', '1', 'system', 'Admin DELETE content (Modul yang Tersedia)', '2015-12-13 01:47:11'),
(2, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-12-14 18:54:45'),
(3, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Web application architecture : principles, protocols, and practices) with biblio_id ()', '2015-12-14 18:55:16'),
(4, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Web application architecture : principles, protocols, and practices) with biblio_id (7)', '2015-12-14 18:58:46'),
(5, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites) with biblio_id (11)', '2015-12-14 18:58:46'),
(6, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Producing open source software : how to run a successful free software project) with biblio_id (5)', '2015-12-14 18:58:46'),
(7, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Library and Information Center Management) with biblio_id (10)', '2015-12-14 18:58:46'),
(8, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (The organization of information) with biblio_id (9)', '2015-12-14 18:58:46'),
(9, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PHP 5 for dummies) with biblio_id (1)', '2015-12-14 18:58:46'),
(10, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (The Definitive Guide to MySQL 5) with biblio_id (3)', '2015-12-14 18:58:46'),
(11, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00010) with title (Linux In a Nutshell)', '2015-12-14 19:01:08'),
(12, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00009) with title (Linux In a Nutshell)', '2015-12-14 19:01:08'),
(13, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00008) with title (Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary)', '2015-12-14 19:01:14'),
(14, 'staff', '1', 'bibliography', 'Admin upload image file 200850842_0.jpg.jpg', '2015-12-14 19:09:15'),
(15, 'staff', '1', 'bibliography', 'Admin update bibliographic data (حوسبة ( اتمتة ) المكتبات) with biblio_id ()', '2015-12-14 19:09:15'),
(16, 'staff', '1', 'bibliography', 'Admin upload image file lmjm-lmwswy.jpg.jpg', '2015-12-14 19:15:28'),
(17, 'staff', '1', 'bibliography', 'Admin update bibliographic data (المعجم الموسوعي لتكنولوجيا المعلومات والاتصالات والانترنت) with biblio_id ()', '2015-12-14 19:15:28'),
(18, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00006) with title (Corruption and development)', '2015-12-14 19:16:37'),
(19, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00005) with title (Corruption and development : the anti-corruption campaigns)', '2015-12-14 19:16:46'),
(20, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00004) with title (Pigs at the trough : how corporate greed and political corruption are undermining America)', '2015-12-14 19:16:46'),
(21, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00003) with title (Lords of poverty : the power, prestige, and corruption of the international aid business)', '2015-12-14 19:16:46'),
(22, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00001) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2015-12-14 19:16:46'),
(23, 'staff', '1', 'bibliography', 'Admin DELETE item data (B00002) with title (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases)', '2015-12-14 19:16:46'),
(24, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Corruption and development) with biblio_id (12)', '2015-12-14 19:16:57'),
(25, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Corruption and development : the anti-corruption campaigns) with biblio_id (13)', '2015-12-14 19:16:57'),
(26, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Pigs at the trough : how corporate greed and political corruption are undermining America) with biblio_id (14)', '2015-12-14 19:16:57'),
(27, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Lords of poverty : the power, prestige, and corruption of the international aid business) with biblio_id (15)', '2015-12-14 19:16:57'),
(28, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2015-12-14 19:16:57'),
(29, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2015-12-14 19:16:57'),
(30, 'staff', '1', 'bibliography', 'Admin update bibliographic data (المعجم الموسوعي لتكنولوجيا المعلومات والاتصالات والانترنت) with biblio_id ()', '2015-12-14 19:19:44'),
(31, 'staff', '1', 'bibliography', 'Admin upload image file 200850844_0.jpg.jpg', '2015-12-14 19:24:16'),
(32, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (قواعد البيانات ونظم المعلومات في المكتبات ومراكز المعلومات) with biblio_id (16)', '2015-12-14 19:24:17'),
(33, 'staff', '1', 'bibliography', 'Admin upload image file 200850838_0.jpg.jpg', '2015-12-14 19:27:48'),
(34, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (شبكات المعلومات والاتصالات) with biblio_id (17)', '2015-12-14 19:27:48'),
(35, 'staff', '1', 'bibliography', 'Admin upload image file -llmy-wstkhdm-msdr-lmlwmt.jpg.jpg', '2015-12-14 19:30:52'),
(36, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (البحث العلمي واستخدام مصادر المعلومات التقليدية والالكترونية) with biblio_id (18)', '2015-12-14 19:30:52'),
(37, 'staff', '1', 'bibliography', 'Admin update bibliographic data (البحث العلمي واستخدام مصادر المعلومات التقليدية والالكترونية) with biblio_id ()', '2015-12-14 19:32:51'),
(38, 'staff', '1', 'bibliography', 'Admin update bibliographic data (حوسبة ( اتمتة ) المكتبات) with biblio_id ()', '2015-12-14 19:33:21'),
(39, 'staff', '1', 'bibliography', 'Admin upload image file ltjr-llktrwny-2.jpg.jpg', '2015-12-14 19:35:59'),
(40, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (التجارة الإلكترونية وتطبيقاتها) with biblio_id (19)', '2015-12-14 19:35:59'),
(41, 'staff', '1', 'bibliography', 'Admin update bibliographic data (التجارة الإلكترونية وتطبيقاتها) with biblio_id ()', '2015-12-14 19:36:09'),
(42, 'staff', '1', 'bibliography', 'Admin upload image file lm-lmlwmt-wlnzm-wlmlwmt-llfrz.jpg.jpg', '2015-12-14 19:39:12'),
(43, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (علم المعلومات والنظم والتقنيات) with biblio_id (20)', '2015-12-14 19:39:12'),
(44, 'staff', '1', 'bibliography', 'Admin upload image file 200851019_0.jpg.jpg', '2015-12-14 19:41:36'),
(45, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (الارشيف الصحفي واتجاهاته الحديثة) with biblio_id (21)', '2015-12-14 19:41:36'),
(46, 'staff', '1', 'system', 'Admin change application global configuration', '2015-12-14 19:48:10');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT '0000-00-00',
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, '2015-12-14 18:54:45', '127.0.0.1', 'a:1:{i:0;s:1:"1";}', '2015-12-14', '2015-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Index pour la table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Index pour la table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Index pour la table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`);

--
-- Index pour la table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Index pour la table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Index pour la table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Index pour la table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Index pour la table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Index pour la table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Index pour la table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`);

--
-- Index pour la table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Index pour la table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Index pour la table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Index pour la table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Index pour la table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Index pour la table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Index pour la table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Index pour la table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Index pour la table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Index pour la table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Index pour la table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Index pour la table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Index pour la table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Index pour la table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Index pour la table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Index pour la table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Index pour la table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Index pour la table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Index pour la table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Index pour la table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Index pour la table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Index pour la table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Index pour la table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Index pour la table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Index pour la table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

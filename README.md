# Rime

My Rime configuration.

Especially recommends `luna_pinyin.xiandaihanyuchangyongcibiao.dict.yaml`。

特别推荐使用「现代汉语常用词表」，让你摆脱 Rime 自带词表规模过大查找不便 / 港台词汇过多的问题。

## Snapshot

Linux Snapshot:

![Linux Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/linux-rime.png)

macOS Snapshot:

apathy scheme:

![Mac apathy theme Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/mac-rime-apathy.png)

homepage scheme:

![Mac homepage theme Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/mac-rime-homepage.png)

Emoji Snapshot:

![Emoji Snapshot 1](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/emoji-1.png)

![Emoji Snapshot 2](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/emoji-2.png)

Kaomoji Snapshot:

![Kaomoji Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/kaomoji.png)

Poetry Snapshot:

![Poetry Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/poetry.png)


## Feature

- double Pingyin input
- official website UI
- Apple offical input method UI
- include Chinese Pinyin to Emoji mapping(upgrade to emoji 12.0)


## Requirements


- Linux
  - librime>=1.3
  - opencc>=1.0.2
- macOS
  - works properly in 10.15.3 (19D76)
  - DO NOT install 0.9.20, it is a old deprecated version. using `brew cask install squirrel` to install latest squirrel


## Structure

- User defined files
  - `default.custom.yaml`：自定义配置
  - `squirrel.custom.yaml`: macOS Squirrel 鼠须管自定义配置
  - `luna_pinyin.custom.yaml`：明月拼音自定义配置（模糊音在此）
  - `double_pinyin.custom.yaml`：双拼自定义配置
  - `luna_pinyin.custom.dict.yaml.sample`：拼音自定义字典（使用 `import_tables`
        引入其他 dict），使用时需要--重命名--为 `luna_pinyin.custom.dict.yaml`
- Dictionary
  - `essay.txt` Rime 原版 essay 中词频高于 700 的词汇和单字（推荐，68k）`mv essay.txt essay.origin.txt; cat essay.origin.txt | awk '{if($2>700){print $0}}' > essay.txt`
  - `luna_pinyin.hanyu.dict.yaml`：汉语大词典（Rime 自带，不推荐使用，220k）
  - `luna_pinyin.poetry.dict.yaml`：明月拼音擴充詞庫（詩詞）（Rime 自带）
  - `luna_pinyin.emoji.dict.yaml`：Rime 自带 emoji（Rime 自带）
  - `luna_pinyin.dict.yaml`：明月拼音（Rime 自带，70k）
  - `luna_pinyin.extended.dict.yaml`：明月拼音擴充詞庫（Rime 自带，不推荐使用，130k）
  - `luna_pinyin.xiandaihanyuchangyongcibiao.dict.yaml`：教育部发布的现代汉语常用词表（教育部，强烈推荐，51k）
  - `luna_pinyin.chengyusuyu.dict.yaml` 成语俗语（搜狗，40k）
     - https://pinyin.sogou.com/dict/detail/index/15097
  - `luna_pinyin.sijixingzhenquhuadimingciku.dict.yaml`: 四级行政区划地名词库（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/482
  - `luna_pinyin.jisuanjicihuidaquan.dict.yaml`：计算机词汇大全（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/15117
  - `luna_pinyin.wangluoliuxingxinci.dict.yaml`: 网络流行新词（搜狗，15k，manual updated）
     - https://pinyin.sogou.com/dict/detail/index/4
  - `luna_pinyin.shanghaishichengshixinxijingxuan.dict.yaml` 上海市城市信息精选（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/19430
  - `luna_pinyin.shanghaihuadaquan.dict.yaml` 上海话大全（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/22413
  - `luna_pinyin.mingxing.dict.yaml` 明星（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/15209
  - `luna_pinyin.zhongguolishicihuidaquan.dict.yaml` 中国历史词汇大全（搜狗）
     - https://pinyin.sogou.com/dict/detail/index/19430
  - `luna_pinyin.kaifadashenzhuanyongciku.dict.yaml` 开发大神专用词库（搜狗，0.3k，manual updated）
     - https://pinyin.sogou.com/dict/detail/index/75228
  - `luna_pinyin.emoji.cldr.dict.yaml`：Emoji parsed from [jolicode/emoji-search: Emoji synonyms to build your own emoji-capable search engine (elasticsearch, solr)](https://github.com/jolicode/emoji-search)（强烈推荐）
    - include emoji 7.0, eg. 🏎️ (sai che)
    - include emoji 8.0, eg. 🦄️ (du jiao shou)
    - include emoji 9.0, eg. 🤡 (xiao chou)
    - include emoji 10.0, eg. 🧠 (da nao)
    - include emoji 11.0, eg. 🧯 (mie huo qi) 🥽 (hu mu jing)
    - include emoji 12.0, eg. 🧎(gui xia) 🪂(tiao san)
  - `luna_pinyin.emoji.apple.dict.yaml`：Apple iOS 10 Emoji
  - `luna_pinyin.emoji.scomper.dict.yaml`：Scomper 维护 Emoji（包含 Unicode 9.0）
  - `luna_pinyin.kaomoji.dict.yaml`：搜狗颜文字
- Generated fiels
  - `build` folder in Linux, macOS in rime root folder:
     - `default.yaml`
     - `squirrel.yaml`
     - `-.prism.bin`
     - `-.reverse.bin`
     - `-.table.bin`
     - `-.custom.reverse.bin`
  - `$ROOT` folder:
     - `-.schema.yaml`
     - `user.yaml`
  - Files generated after installation:
     - `symbols.yaml`
     - `installation.yaml`
  - plum

See [rime/plum: 東風破 /plum/: Rime configuration manager and input schema repository](https://github.com/rime/plum)
to gernerate input methods. In short:

```
./plum/rime-install essay
./plum/rime-install pinyin-simp
./plum/rime-install luna-pinyin
./plum/rime-install double-pinyin
./plum/rime-install combo-pinyin
./plum/rime-install wubi
```

All `dict.yaml` file can use separately.

Use [alswl/ascel: Another scel parser](https://github.com/alswl/ascel) to convert Sogou scel files.

Author: @alswl .


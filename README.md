# Rime

My Rime configuration.


## Snapshot

Linux Snapshot:

![Linux Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/linux-rime.png)

macOS Snapshot:

![Mac Snapshot](https://raw.githubusercontent.com/alswl/Rime/master/snapshots/mac-rime.png)


## Feature

*   double Pingyin input
*   official website UI
*   Apple offical input method UI
*   include Chinese Pinyin to Emoji mapping
*   include Kaomoji
*   include 四级行政区词库
*   include 计算机词汇大全
*   include 古诗词
*   include 网络新兴词


## Requirements

*   Linux
    *   librime>=1.3
    *   opencc>=1.0.2
*   macOS
    *   test in 0.9.27
    *   DO NOT install 0.9.20, it is a old deprecated version. You should build from source.


## Structure

*   User defined files
    *   `default.custom.yaml`：自定义配置
    *   `squirrel.custom.yaml`: macOS Squirrel 鼠须管自定义配置
    *   `luna_pinyin.custom.yaml`：明月拼音自定义配置（模糊音在此）
    *   `double_pinyin.custom.yaml`：双拼自定义配置
    *   `luna_pinyin.custom.dict.yaml.sample`：拼音自定义字典（使用 `import_tables`
        引入其他 dict），使用时重命名为 `luna_pinyin.custom.dict.yaml`
*   Dictionary
    *   `luna_pinyin.emoji.dict.yaml`：Rime 自带 emoji
    *   `luna_pinyin.emoji.apple.dict.yaml`：Apple iOS 10 自带 Emoji
    *   `luna_pinyin.emoji.scomper.dict.yaml`：Scomper 维护 Emoji（包含 Unicode 9.0）
    *   `luna_pinyin.hanyu.dict.yaml`：汉语大词典
    *   `luna_pinyin.jisuanjicihuidaquan.dict.yaml`：计算机词汇大全
    *   `luna_pinyin.poetry.dict.yaml`：古诗词
    *   `luna_pinyin.sijixingzhenquhuadimingciku.dict.yaml`: 四级行政区地名词库
    *   `luna_pinyin.wangluoliuxingxinci.dict.yaml`: 网络流行词
*   Generated fiels
    *   `build` folder
        *   `default.yaml`
        *   `user.yaml`
        *   `default.yaml`
        *   `double_pinyin.prism.bin`
        *   `double_pinyin.schema.yaml`
        *   `emoji.prism.bin`
        *   `emoji.reverse.bin`
        *   `emoji.schema.yaml`
        *   `emoji.table.bin`
        *   `luna_pinyin.custom.reverse.bin`
        *   `luna_pinyin.custom.table.bin`
    *   Files generatedafter installation:
        *   `symbols.yaml`
        *   `installation.yaml`

See [rime/plum: 東風破 /plum/: Rime configuration manager and input schema repository](https://github.com/rime/plum)
to gernerate input methods. In short:

```
cd plum
./rime-install double-pinyin
./rime-install combo-pinyin
```

All `dict.yaml` file can use separately.

Author: @alswl .

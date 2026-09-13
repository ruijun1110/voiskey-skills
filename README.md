# Voiskey Skills

Voiskey 的两个独立 Skill：

| Skill | 用途 |
| --- | --- |
| `voiskey-brand-copy` | 撰写或审核产品页、应用商店页面、发布素材、广告、社交内容、邮件、演示文稿和脚本等静态对外文案 |
| `voiskey-product-hunt-replies` | 回复单条 Product Hunt 评论及后续对话 |

## 最简单：让 AI 帮你安装或更新

把下面其中一句发给 AI：

```
从 https://github.com/ruijun1110/voiskey-skills 帮我安装全部 Voiskey skills。
```

```
从 https://github.com/ruijun1110/voiskey-skills 帮我安装 Voiskey Brand Copy skill。
```

```
从 https://github.com/ruijun1110/voiskey-skills 帮我安装 Voiskey Product Hunt Replies skill。
```

更新时使用同样的话，把“安装”改成“更新”。如果你使用两个 Skill，请一起更新。

## Claude 桌面应用

1. 打开左侧的 **Customize**，进入 **Plugins**，点右上角 **Add**，选择 **Add marketplace**，填入：

   ```
   https://github.com/ruijun1110/voiskey-skills
   ```

2. 点对话输入框旁边的 **+**，选择 **Plugins > Add plugin**。
3. 找到并安装一个或两个 Skill，范围选择 **User**，这样所有项目都能使用。

## Codex 桌面应用

直接让 Codex 按上面的请求安装一个或两个 Skill。Skill 应安装到全局目录，确保所有项目都能使用。安装或更新后如被提示，请重启 Codex。

## Claude 和 ChatGPT 网页版

下载你所使用的 Skill 最新压缩包，并分别上传：

- [Voiskey Brand Copy](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-brand-copy.zip)
- [Voiskey Product Hunt Replies](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-product-hunt-replies.zip)

网页版不会自动更新。更新时，重新下载并替换每个已安装的 Skill。

## Brand System 更新

仓库只维护一份原始 Brand System，位于 `brand/brand-system.md`。每次发布前，它会被复制到两个独立 Skill 中。

同事电脑上的两个 Skill 没有运行时链接。因此，当 Brand System 更新后，使用两个 Skill 的同事需要一起更新，才能保证两个 Skill 都使用同一份最新 Brand System。

## 给 AI 的安装说明

如果你在帮助用户安装或更新，请把用户请求的 Skill 安装为**全局 Skill**，不要放到单个项目文件夹。每个 Skill 保持各自的文件夹。

更新时，只替换对应的已安装 Skill。用户要求更新全部 Voiskey skills 时，更新两个 Skill。完成后，按宿主应用要求重启或重新加载。

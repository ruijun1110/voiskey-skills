# Voiskey Skills

## 选择你的安装方式

| 你用的是 | 安装方式 | 如何更新 |
|---|---|---|
| Claude（桌面应用或 claude.ai 网页版） | [Claude](#claude) | 通常自动更新 |
| Codex/ChatGPT | [Codex](#codex) | 每次收到更新通知都要再运行一次同一条命令 |
| ChatGPT 网页版 | [ChatGPT 网页版](#chatgpt-网页版) | 收到更新通知后重新下载上传 |

同时用多个工具的话，每个都按对应的步骤装一次。

## Claude

1. 在 Claude 中打开 **Settings > Capabilities**（设置 > 功能），确认 **Code execution and file creation**（代码执行和文件创建）已开启。
2. 打开左侧的 **Customize**，进入 **Plugins**。
3. 在 **Personal plugins** 里点 **+**，选择 **Add marketplace**，再选择 **Add from a repository**，填入下面的链接：

```
https://github.com/ruijun1110/voiskey-skills
```

4. 点 **Browse plugins**，找到 **voiskey-copy**，点 **Install**。

**更新：** 通常会自动获取新版本。收到更新通知后如果还是旧版，在 **Plugins** 里卸载 voiskey-copy，再重新安装。

**使用：** 让 Claude 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。

**用 Claude Code（终端）的话：** 在对话框里依次输入 `/plugin marketplace add ruijun1110/voiskey-skills` 和 `/plugin install voiskey-copy@voiskey-skills`，之后自动更新。

### 备用：上传 zip

如果 Customize 里没有 **Plugins**，可以用上传 zip 的方式：

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 进入 **Customize > Add > Upload skill**，在 Download 里选中上传 `voiskey-copy.zip`。
3. 确认这个 Skill 处于开启状态。

**更新：** 这种方式不会自动更新。收到更新通知后，重新下载 zip，在 Claude 里删除旧的 Skill，再上传新的。

## Codex

打开 Terminal「终端」，粘贴下面这一行，回车：

```bash
curl -fsSL -o /tmp/voiskey-copy.zip https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip && mkdir -p ~/.codex/skills && rm -rf ~/.codex/skills/voiskey-copy && unzip -q /tmp/voiskey-copy.zip -d ~/.codex/skills
```

它会下载最新版 Skill，放进 Codex 的 Skill 文件夹，完成后重启 Codex。

**更新：** 收到更新通知后，再运行一次同一条命令，它会用新版替换旧版。

**使用：** 让 Codex 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。

## ChatGPT 网页版

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 在 ChatGPT 中进入 **Plugins > Skills > +** 选择 **Upload from your computer**（从电脑上传），选中 `voiskey-copy.zip`。

**更新：** 网页版不会自动更新。收到更新通知后，重新下载 zip，在 ChatGPT 里删除旧的 Skill，再上传新的。

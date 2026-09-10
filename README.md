# Voiskey Skills

## 最简单：让 AI 帮你装

直接把下面这句话发给 AI：

```
从 https://github.com/ruijun1110/voiskey-skills 帮我安装 voiskey-copy skill。
```

AI 会按照下面的[给 AI 的安装说明](#给-ai-的安装说明)自动装好。过程中它可能请你允许运行命令或联网，点允许即可。装好后按它的提示刷新或重启。

**更新：** 收到更新通知后，同样对 AI 说"从 https://github.com/ruijun1110/voiskey-skills 帮我更新 voiskey-copy skill"。

## 手动安装

| 你用的是 | 安装方式 | 如何更新 |
|---|---|---|
| Claude 桌面应用 | [Claude 桌面应用](#claude-桌面应用) | 收到更新通知后让 AI 更新 |
| Codex/ChatGPT 桌面应用 | [Codex](#codex) | 收到更新通知后再运行一次同一条命令 |
| Claude 网页版（claude.ai） | [Claude 网页版](#claude-网页版) | 收到更新通知后重新下载上传 |
| ChatGPT 网页版 | [ChatGPT 网页版](#chatgpt-网页版) | 收到更新通知后重新下载上传 |

同时用多个工具的话，每个都按对应的步骤装一次。

### Claude 桌面应用

1. 打开左侧的 **Customize**，进入 **Plugins**，点右上角 **Add**，选择 **Add marketplace**，填入：

```
https://github.com/ruijun1110/voiskey-skills
```

2. 点对话输入框旁边的 **+**，选择 **Plugins > Add plugin**，找到 **voiskey-copy**，点 **Install**，范围选 **User**（对所有项目生效）。

注意：Customize 里的 **Discover** 只显示官方插件，找不到 voiskey-copy 是正常的，要从第 2 步的入口安装。

**使用：** 让 Claude 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。

### Claude 网页版

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 在 Claude 中打开 **Settings > Capabilities**（设置 > 功能），确认 **Code execution and file creation**（代码执行和文件创建）已开启。
3. 进入 **Customize > Add > Upload skill**，在 Download 里选中上传 `voiskey-copy.zip`。
4. 确认这个 Skill 处于开启状态。

**更新：** 网页版不会自动更新。收到更新通知后，重新下载 zip，在 Claude 里删除旧的 Skill，再上传新的。

### Codex

打开 Terminal「终端」，粘贴下面这一行，回车：

```bash
curl -fsSL -o /tmp/voiskey-copy.zip https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip && mkdir -p ~/.codex/skills && rm -rf ~/.codex/skills/voiskey-copy && unzip -q /tmp/voiskey-copy.zip -d ~/.codex/skills
```

它会下载最新版 Skill，放进 Codex 的 Skill 文件夹，完成后重启 Codex。

**更新：** 收到更新通知后，再运行一次同一条命令，它会用新版替换旧版。

**使用：** 让 Codex 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。

### ChatGPT 网页版

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 在 ChatGPT 中进入 **Plugins > Skills > +** 选择 **Upload from your computer**（从电脑上传），选中 `voiskey-copy.zip`。

**更新：** 网页版不会自动更新。收到更新通知后，重新下载 zip，在 ChatGPT 里删除旧的 Skill，再上传新的。

## 给 AI 的安装说明

如果你是正在帮用户安装或更新这个 Skill 的 AI，请把它装成**全局 Skill**（对用户的所有项目生效），按你所在的工具执行下面对应的部分。不要把文件复制到某个项目文件夹里，那样只在那个项目生效，也没有更新方式。

### 你是 Claude Code

安装：

1. 先检查 `~/.claude/skills/voiskey-copy` 是否存在。如果存在，这是旧的手动副本，会和插件同名冲突。先告诉用户，经用户同意后再删除。
2. 安装最新的skill。
3. 告诉用户运行 `/reload-plugins`，或者重启 Claude Code。

### 你是 Codex

把 skill 安装到全局目录 `~/.codex/skills`，或替换旧版本：

完成后告诉用户重启 Codex。

### 你在网页版里

你无法在用户的电脑上安装。请让用户按[手动安装](#手动安装)里网页版的步骤下载 zip 并上传。

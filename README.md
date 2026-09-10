# Voiskey Skills

用来撰写和审核 Voiskey 对外物料的 Skill。所有内容都以仓库里的 Voiskey Brand System 为唯一依据。

## 选择你的安装方式

| 你用的是 | 安装方式 | 如何更新 |
|---|---|---|
| Claude Code | [Claude Code](#claude-code) | 自动更新 |
| Codex（ChatGPT 桌面应用或 Codex 命令行） | [Codex](#codex) | 收到通知后再运行一次同一条命令 |
| Claude 网页版（claude.ai） | [Claude 网页版](#claude-网页版) | 收到通知后重新上传 |
| ChatGPT 网页版 | [ChatGPT 网页版](#chatgpt-网页版) | 收到通知后重新上传 |

同时用多个工具的话，每个都按对应的步骤装一次。

## Claude Code

在 Claude Code 的对话框里依次输入这两条命令：

```
/plugin marketplace add ruijun1110/voiskey-skills
```

```
/plugin install voiskey-copy@voiskey-skills
```

装好后输入 `/reload-plugins`，或者重启 Claude Code。

**更新：** 自动完成，不需要任何操作。

**使用：** 让 Claude 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。也可以手动输入 `/voiskey-copy:voiskey-copy`。

## Codex

打开「终端」（按 Command + 空格，输入"终端"或 Terminal），粘贴下面这一行，回车：

```bash
curl -fsSL -o /tmp/voiskey-copy.zip https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip && mkdir -p ~/.codex/skills && rm -rf ~/.codex/skills/voiskey-copy && unzip -q /tmp/voiskey-copy.zip -d ~/.codex/skills
```

它会下载最新版 Skill，放进 Codex 的 Skill 文件夹。不需要 GitHub 账号，也不需要安装 Codex 命令行。完成后重启 Codex。

**更新：** 收到通知后，再运行一次同一条命令，它会用新版替换旧版。

**使用：** 让 Codex 写或审核 Voiskey 相关内容时，它会自动调用这个 Skill。也可以手动输入 `$voiskey-copy`。

## Claude 网页版

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 在 Claude 中打开 **Settings > Capabilities**（设置 > 功能），确认 **Code execution and file creation**（代码执行和文件创建）已开启。
3. 进入 **Customize > Skills**，选择上传 Skill，选中 `voiskey-copy.zip`。
4. 确认这个 Skill 处于开启状态。

**更新：** 网页版不会自动更新。收到通知后，重新下载 zip，在 Claude 里删除旧的 Skill，再上传新的。

## ChatGPT 网页版

1. 下载 [voiskey-copy.zip](https://github.com/ruijun1110/voiskey-skills/releases/latest/download/voiskey-copy.zip)。
2. 在 ChatGPT 中进入 **Skills**，选择 **Create**（创建），再选 **Upload from your computer**（从电脑上传），选中 `voiskey-copy.zip`。

**更新：** 网页版不会自动更新。收到通知后，重新下载 zip，在 ChatGPT 里删除旧的 Skill，再上传新的。

## 维护说明

修改 `~/voiskey-skills` 里的文件，然后 commit 并 push。

- **Claude Code 用户：** 自动更新，不需要通知。
- **Codex 用户：** 发通知，请他们再运行一次安装命令。
- **网页版用户：** 每次 push 都会自动重新生成[最新版 zip](https://github.com/ruijun1110/voiskey-skills/releases/latest)，发通知请他们重新上传。

`plugins/voiskey-copy/skills/voiskey-copy/references/brand-system.md` 是 vault 中 Brand System 的副本。Brand System 修改后，先复制到这里再 push。

**这是公开仓库。** 任何文件里都只能出现 Voiskey 这一个公司名称，Brand System 本身提到的平台和模型名称除外。

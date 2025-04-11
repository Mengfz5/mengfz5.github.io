#!/bin/bash

echo "🚀 GitHub SSH 设置脚本开始..."

# 检查是否已有 SSH key
KEY_PATH="$HOME/.ssh/id_ed25519"
if [ -f "$KEY_PATH" ]; then
    echo "✅ SSH 密钥已存在：$KEY_PATH"
else
    echo "🔑 未发现 SSH 密钥，正在生成..."
    read -p "请输入你的 GitHub 绑定邮箱：" email
    ssh-keygen -t ed25519 -C "$email"
fi

# 拷贝公钥到剪贴板
PUB_KEY="${KEY_PATH}.pub"
if [ -f "$PUB_KEY" ]; then
    pbcopy < "$PUB_KEY"
    echo "📋 公钥已复制到剪贴板。"
else
    echo "❌ 未找到公钥文件：$PUB_KEY"
    exit 1
fi

# 提示用户添加到 GitHub
echo "🌐 请打开浏览器并粘贴公钥到 GitHub SSH 设置页面："
echo "👉 https://github.com/settings/ssh/new"
read -p "添加完成后按回车继续..."

# 设置当前 Git 仓库使用 SSH 地址
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    REPO_URL=$(git remote get-url origin)
    echo "📦 当前仓库远程地址为：$REPO_URL"

    if [[ $REPO_URL == https://github.com/* ]]; then
        USER_REPO=${REPO_URL#https://github.com/}
        SSH_URL="git@github.com:${USER_REPO}"
        git remote set-url origin "$SSH_URL"
        echo "✅ 远程地址已切换为 SSH：$SSH_URL"
    else
        echo "ℹ️ 当前远程地址不是 HTTPS，无需更改。"
    fi
else
    echo "❌ 当前目录不是一个 Git 仓库，请先进入仓库目录。"
    exit 1
fi

# 测试 SSH 连接
echo "🧪 正在测试 SSH 连接..."
ssh -T git@github.com

echo "🎉 完成！现在你可以用 SSH 推送和拉取代码了～"

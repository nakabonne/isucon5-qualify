# ansible-isucon/isucon5-qualifier

## Overview

Ansible playbook for [ISUCON5-qualifier](http://isucon.net/archives/45166636.html)

## Requirement

- Ubuntu 15.04(16.04でも動いた)

## Usage

### ベンチ実行

```
$ make bench
```

### リスタート

```
$ make restart
```

### alpによるログ集計

```
$ make alp
```

### alpのログローテート

```
$ make rotate
```

### データ生成

```
$ /home/isucon/ansible-isucon/isucon5-qualifier# /home/isucon/.local/ruby/bin/ruby webapp/script/gen.rb
```

### 準備

Remote:
```
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon5-qualifier
${EDITOR} remote
ansible-playbook -i remote playbook.yml
```

Local:
```
yum install -y epel-release git
yum install -y ansible
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon5-qualifier
# for image
ansible-playbook -i local image/ansible/playbook.yml
# for bench
ansible-playbook -i local bench/ansible/playbook.yml
```

## References

- [ISUCON5 予選レギュレーション](http://isucon.net/archives/45347574.html)
- [ISUCON5 予選マニュアル](https://gist.github.com/tagomoris/1a2df5ab0999f5e64cff)
- [isucon/isucon5-qualify](https://github.com/isucon/isucon5-qualify)
- [vagrant-isucon](https://github.com/matsuu/vagrant-isucon)

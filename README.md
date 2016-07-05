# TDD - Ansible-tests-runner

การทำ TestDriven โดยใช้ AnsibleSpec
โดยมี ServerSpec เป็น Testing Framework (Ruby)

* [Rubygems - ansible_spec](http://rubygems.org/gems/ansible_spec)
* [Github - ansible_spec](https://github.com/volanja/ansible_spec)

### สิ่งที่จำเป็นต้องมี

```
$ ruby -v
ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin11.4.2]

$ gem list (needs)
ansible_spec (0.2.6)
serverspec (2.23.1)
specinfra (2.43.4)
hostlist_expression (0.2.1)

$ ansible-playbook --version
ansible-playbook 2.0.1.0

$ vagrant --version
Vagrant 1.7.4
```

### วิธีการใช้งาน

1. ใช้ vagrant up เพื่อสร้าง virtualbox สำหรับทดสอบ 
2. ใช้สคริป `bootstrap.sh` เพื่ออัพเดท ansible roles และติดตั้ง python package ลงบน vagrant hosts
3. เพิ่ม [ServerSpec](http://serverspec.org/resource_types.html) ใน ansible roles ที่ต้องการทดสอบ [main_spec.rb](https://github.com/xemoe/ansible-server_preparations/blob/master/spec/main_spec.rb)
4. ทำการ execute `ansible-playbook -i inventories/vagrant test_suite-playbook.yml` ลงใน vagrant host
5. ทดสอบผ่าน `rake all` 

---

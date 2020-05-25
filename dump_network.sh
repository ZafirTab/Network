adb wait-for-device
adb root
adb wait-for-device
mkdir logs
cd logs
set /a I=0

adb shell date >> sysctl.txt
adb shell "sysctl -a" >> sysctl.txt     // Read/write system control data (under /proc/sys).

:while1 (
set /a I=%I%+1

echo ===================== Iteration %I% ========================= >> nf_conntrack.txt
adb shell date >> nf_conntrack.txt
adb shell cat /proc/net/nf_conntrack >> nf_conntrack.txt  // 追踪一个连接的状态

echo ===================== Iteration %I% ========================= >> ip_conntrack.txt
adb shell date >> ip_conntrack.txt
adb shell cat /proc/net/ip_conntrack >> ip_conntrack.txt

echo ===================== Iteration %I% ========================= >> xfrm_state.txt
adb shell date >> xfrm_state.txt
adb shell ip xfrm state show >> xfrm_state.txt

echo ===================== Iteration %I% ========================= >> xfrm_policy.txt
adb shell date >> xfrm_policy.txt
adb shell ip xfrm policy show >> xfrm_policy.txt

echo ===================== Iteration %I% ========================= >> v46_ip_addr.txt
adb shell date >> v46_ip_addr.txt
adb shell ip addr >> v46_ip_addr.txt

echo ===================== Iteration %I% ========================= >> v4_iptables_raw.txt
adb shell date >> v4_iptables_raw.txt
adb shell iptables -t raw -L -n -v >> v4_iptables_raw.txt

echo ===================== Iteration %I% ========================= >> v4_iptables_mangle.txt
adb shell date >> v4_iptables_mangle.txt
adb shell iptables -t mangle -L -n -v >> v4_iptables_mangle.txt

echo ===================== Iteration %I% ========================= >> v4_iptables_filter.txt
adb shell date >> v4_iptables_filter.txt
adb shell iptables -L -n -v >> v4_iptables_filter.txt

echo ===================== Iteration %I% ========================= >> v4_iptables_nat.txt
adb shell date >> v4_iptables_nat.txt
adb shell iptables -t nat -L -n -v >> v4_iptables_nat.txt

echo ===================== Iteration %I% ========================= >> v6_iptables_raw.txt
adb shell date >> v6_iptables_raw.txt
adb shell ip6tables -t raw -L -n -v >> v6_iptables_raw.txt

echo ===================== Iteration %I% ========================= >> v6_iptables_mangle.txt
adb shell date >> v6_iptables_mangle.txt
adb shell ip6tables -t mangle -L -n -v >> v6_iptables_mangle.txt

echo ===================== Iteration %I% ========================= >> v6_iptables_filter.txt
adb shell date >> v6_iptables_filter.txt
adb shell ip6tables -L -n -v >> v6_iptables_filter.txt

echo ===================== Iteration %I% ========================= >> v6_iptables_nat.txt
adb shell date >> v6_iptables_nat.txt
adb shell ip6tables -t nat -L -n -v >> v6_iptables_nat.txt

echo ===================== Iteration %I% ========================= >> v4_ip_rule_show.txt
adb shell date >> v4_ip_rule_show.txt
adb shell ip rule show >> v4_ip_rule_show.txt

echo ===================== Iteration %I% ========================= >> v6_ip_rule_show.txt
adb shell date >> v6_ip_rule_show.txt
adb shell ip -6 rule show >> v6_ip_rule_show.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_all.txt
adb shell date >> v4_ip_route_show_table_all.txt
adb shell ip route show table all >> v4_ip_route_show_table_all.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_all.txt
adb shell date >> v6_ip_route_show_table_all.txt
adb shell ip -6 route show table all >> v6_ip_route_show_table_all.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_rmnet_data0.txt
adb shell date >> v4_ip_route_show_table_rmnet_data0.txt
adb shell ip route show table rmnet_data0 >> v4_ip_route_show_table_rmnet_data0.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_rmnet_data1.txt
adb shell date >> v4_ip_route_show_table_rmnet_data1.txt
adb shell ip route show table rmnet_data1 >> v4_ip_route_show_table_rmnet_data1.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_rmnet_data2.txt
adb shell date >> v4_ip_route_show_table_rmnet_data2.txt
adb shell ip route show table rmnet_data2 >> v4_ip_route_show_table_rmnet_data2.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_rmnet_data6.txt
adb shell date >> v4_ip_route_show_table_rmnet_data6.txt
adb shell ip route show table rmnet_data6 >> v4_ip_route_show_table_rmnet_data6.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_rmnet_data7.txt
adb shell date >> v4_ip_route_show_table_rmnet_data7.txt
adb shell ip route show table rmnet_data7 >> v4_ip_route_show_table_rmnet_data7.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_r_rmnet_data0.txt
adb shell date >> v4_ip_route_show_table_r_rmnet_data0.txt
adb shell ip route show table r_rmnet_data0 >> v4_ip_route_show_table_r_rmnet_data0.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_r_rmnet_data1.txt
adb shell date >> v4_ip_route_show_table_r_rmnet_data1.txt
adb shell ip route show table r_rmnet_data1 >> v4_ip_route_show_table_r_rmnet_data1.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_r_rmnet_data2.txt
adb shell date >> v4_ip_route_show_table_r_rmnet_data2.txt
adb shell ip route show table r_rmnet_data2 >> v4_ip_route_show_table_r_rmnet_data2.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_rmnet_data0.txt
adb shell date >> v6_ip_route_show_table_rmnet_data0.txt
adb shell ip -6 route show table rmnet_data0 >> v6_ip_route_show_table_rmnet_data0.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_rmnet_data1.txt
adb shell date >> v6_ip_route_show_table_rmnet_data1.txt
adb shell ip -6 route show table rmnet_data1 >> v6_ip_route_show_table_rmnet_data1.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_rmnet_data2.txt
adb shell date >> v6_ip_route_show_table_rmnet_data2.txt
adb shell ip -6 route show table rmnet_data2 >> v6_ip_route_show_table_rmnet_data2.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_rmnet_data6.txt
adb shell date >> v6_ip_route_show_table_rmnet_data6.txt
adb shell ip -6 route show table rmnet_data6 >> v6_ip_route_show_table_rmnet_data6.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_rmnet_data7.txt
adb shell date >> v6_ip_route_show_table_rmnet_data7.txt
adb shell ip -6 route show table rmnet_data7 >> v6_ip_route_show_table_rmnet_data7.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_r_rmnet_data0.txt
adb shell date >> v6_ip_route_show_table_r_rmnet_data0.txt
adb shell ip -6 route show table r_rmnet_data0 >> v6_ip_route_show_table_r_rmnet_data0.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_r_rmnet_data1.txt
adb shell date >> v6_ip_route_show_table_r_rmnet_data1.txt
adb shell ip -6 route show table r_rmnet_data1 >> v6_ip_route_show_table_r_rmnet_data1.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_r_rmnet_data2.txt
adb shell date >> v6_ip_route_show_table_r_rmnet_data2.txt
adb shell ip -6 route show table r_rmnet_data2 >> v6_ip_route_show_table_r_rmnet_data2.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_wlan0.txt
adb shell date >> v4_ip_route_show_table_wlan0.txt
adb shell ip route show table wlan0 >> v4_ip_route_show_table_wlan0.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_wlan0.txt
adb shell date >> v6_ip_route_show_table_wlan0.txt
adb shell ip -6 route show table wlan0 >> v6_ip_route_show_table_wlan0.txt

echo ===================== Iteration %I% ========================= >> v4_ip_route_show_table_dummy0.txt
adb shell date >> v4_ip_route_show_table_dummy0.txt
adb shell ip route show table dummy0 >> v4_ip_route_show_table_dummy0.txt

echo ===================== Iteration %I% ========================= >> v6_ip_route_show_table_dummy0.txt
adb shell date >> v6_ip_route_show_table_dummy0.txt
adb shell ip -6 route show table dummy0 >> v6_ip_route_show_table_dummy0.txt

echo ===================== Iteration %I% ========================= >> xfrm_stat.txt
adb shell date >> xfrm_stat.txt
adb shell cat /proc/net/xfrm_stat >> xfrm_stat.txt

echo ===================== Iteration %I% ========================= >> ipv4_forwarding_flag.txt
adb shell date >> ipv4_forwarding_flag.txt
echo "/proc/sys/net/ipv4/ip_forward" >> ipv4_forwarding_flag.txt
adb shell cat /proc/sys/net/ipv4/ip_forward >> ipv4_forwarding_flag.txt

echo ===================== Iteration %I% ========================= >> ipv6_forwarding_flag.txt
adb shell date >> ipv6_forwarding_flag.txt
echo "/proc/sys/net/ipv6/conf/all/forwarding" >> ipv6_forwarding_flag.txt
adb shell cat /proc/sys/net/ipv6/conf/all/forwarding >> ipv6_forwarding_flag.txt

echo ===================== Iteration %I% ========================= >> ifconfig.txt
adb shell date >> ifconfig.txt
adb shell ifconfig >> ifconfig.txt

echo ===================== Iteration %I% ========================= >> ss.txt
adb shell date >> ss.txt
adb shell "ss -utneiopan" >> ss.txt

echo ===================== Iteration %I% ========================= >> trafficcontroller.txt
adb shell date >> trafficcontroller.txt
adb shell "dumpsys netd trafficcontroller" >> trafficcontroller.txt

echo ===================== Iteration %I% ========================= >> sysctl.txt
adb shell date >> sysctl.txt
adb shell "sysctl -a | grep wlan0" >> sysctl.txt

timeout /t 5 /nobreak
goto :while1
)
cd ..
pause

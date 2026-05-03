function plot_case(t, sol, gamma, tspan, title_text, explode_flag)

x = sol(:,1);
y = sol(:,2);
z = sol(:,3);

figure;

% x(t)
subplot(2,2,1)
plot(t,x,'LineWidth',1.5)
xlabel('Time(day)'); ylabel('x(t)')
xlim(tspan); grid on

% y(t)
subplot(2,2,2)
plot(t,y,'LineWidth',1.5)
xlabel('Time(day)'); ylabel('y(t)')
xlim(tspan); grid on

% z(t)
subplot(2,2,3)
plot(t,z,'LineWidth',1.5)
xlabel('Time(day)'); ylabel('z(t)')
xlim(tspan)

if explode_flag
    ylim([0 1e25])   % match explosion scale
end

grid on

% Phase plot
subplot(2,2,4)
plot3(x,y,z,'LineWidth',1.5)
xlabel('x'); ylabel('y'); zlabel('z')
grid on

sgtitle([title_text, ', \gamma = ', num2str(gamma)])

end
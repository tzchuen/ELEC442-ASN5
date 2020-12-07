function run_sim_asn5q1c(x_0_in)
    % Initialize constants
    x_0 = x_0_in;
    
    l1=1;l2=1;m1=1;m2=1;g=9.81;
    
    % Run simulation
    simOut = sim('asn5q1c');
    
    % Take output values from Simulink
    theta1=simOut.get('theta1');
    theta2=simOut.get('theta2');
    theta1_dot=simOut.get('theta1_dot');
    theta2_dot=simOut.get('theta2_dot');
    T=simOut.get('T');
    V=simOut.get('V');
    E_total=simOut.get('E_total');
    
    % Plots theta1
    figure;
    hold on;
    view(2);
    title('Plot for $\theta_{1}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\theta_{1}$', 'Interpreter', 'latex');
    plot(theta1, 'blue');
    saveas(gcf, 'q1c_t1.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_t1', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots theta2
    figure;
    hold on;
    view(2);
    title('Plot for $\theta_{2}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\theta_{2}$', 'Interpreter', 'latex');
    plot(theta2, 'blue');
    saveas(gcf, 'q1c_t2.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_t2', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots theta1_dot
    figure;
    hold on;
    view(2);
    title('Plot for $\dot{\theta}_{1}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\dot{\theta}_{1}$', 'Interpreter', 'latex');
    plot(theta1_dot, 'blue');
    saveas(gcf, 'q1c_t1d.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_t1d', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots theta2_dot
    figure;
    hold on;
    view(2);
    title('Plot for $\dot{\theta}_{2}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\dot{\theta}_{2}$', 'Interpreter', 'latex');
    plot(theta2_dot, 'blue');
    saveas(gcf, 'q1c_t2d.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_t2d', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots kinetic energy
    figure;
    hold on;
    view(2);
    title('Plot for Kinetic Energy, $T$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$T$', 'Interpreter', 'latex');
    plot(T, 'blue');
    saveas(gcf, 'q1c_T.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_T', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots potential energy
    figure;
    hold on;
    view(2);
    title('Plot for Potential Energy, $T$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$V$', 'Interpreter', 'latex');
    plot(V, 'blue');
    saveas(gcf, 'q1c_V.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_V', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots total energy
    figure;
    hold on;
    view(2);
    title('Plot for Total Energy, $T+V$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$T+V$', 'Interpreter', 'latex');
    plot(E_total, 'blue');
    saveas(gcf, 'q1c_total.fig'); % saves figure as .fig
    saveas(gcf, 'q1c_total', 'epsc'); % saves figure as .eps (for preparing text)
    

    

    
end
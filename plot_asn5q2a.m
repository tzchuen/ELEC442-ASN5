function plot_asn5q2a()
    % Run simulation
    simOut = sim('asn5q2');
    
    % Take output values from Simulink
    theta1=simOut.get('theta1');
    theta2=simOut.get('theta2');
    
    % Plots theta1
    figure;
    hold on;
    view(2);
    title('Plot for $\theta_{1}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\theta_{1}$', 'Interpreter', 'latex');
    plot(theta1, 'Color', '#7E2F8E');
    saveas(gcf, 'q2a_t1.fig'); % saves figure as .fig
    saveas(gcf, 'q2a_t1', 'epsc'); % saves figure as .eps (for preparing text)
    
    % Plots theta2
    figure;
    hold on;
    view(2);
    title('Plot for $\theta_{2}$', 'Interpreter', 'latex');
    xlabel('Time (seconds)', 'Interpreter', 'latex');
    ylabel('$\theta_{2}$', 'Interpreter', 'latex');
    plot(theta2, 'Color', '#7E2F8E');
    saveas(gcf, 'q2a_t2.fig'); % saves figure as .fig
    saveas(gcf, 'q2a_t2', 'epsc'); % saves figure as .eps (for preparing text)
end
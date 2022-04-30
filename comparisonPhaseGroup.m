clear
close all
clc

% Çaðatay Kavas

% In this code you can see three different situations. 

% In each plot phase velocity is greater than zero. 
% Phase velocity is visualized as blue circles. Blue circles go to right in
% each plot.

% Group velocity is less than zero in first plot. Envelope of the function
% (green dashed line) visualizes group velocity.

% In first plot group velocity is less than zero so envelope moves to left.
% In second plot group velocity is zero so envelope stays still.
% In third plot group velocity is more than zero so enveloped moves to
% right.

% Subplots for visualization
ax1=subplot(3,3,1);
ax2=subplot(3,3,2);
ax3=subplot(3,3,3);
ax4=subplot(3,3,4);
ax5=subplot(3,3,5);
ax6=subplot(3,3,6);
ax7=subplot(3,3,7);
ax8=subplot(3,3,8);
ax9=subplot(3,3,9);

k1=0.5;
k2=0.1;
t=0:0.01:10; % Time
a=0;



while(1<2) % Loop
    
    % Different functions are defined here

    plotBlue1=5*sin((8*pi*a)-(3*t));
    plotRed1=5*sin((2*pi*a)-(4*t));
    plotBlack1=plotRed1+plotBlue1;
    
    plotBlue2=5*sin((8*pi*a)-(3*t));
    plotRed2=5*sin((8*pi*a)-(4*t));
    plotBlack2=plotRed2+plotBlue2;
    
    plotBlue3=5*sin((8*pi*a)-(3*t));
    plotRed3=5*sin((12*pi*a)-(4*t));
    plotBlack3=plotRed3+plotBlue3;
    
    % Third rows which are in comment are for visualization of envelopes
    % By putting second rows in comment and getting them out of comment you
    % can use them 
    
    [pk1,lk1] = findpeaks(plotBlack1,t);
    [up1,lo1]=envelope(plotBlack1);
    %[epk1,e1k1]=findpeaks(envelope(plotBlack1),t); %Those are third rows
    
    [pk2,lk2] = findpeaks(plotBlack2,t);
    [up2,lo2]=envelope(plotBlack2);
    %[epk2,e1k2]=findpeaks(envelope(plotBlack2),t);
    
    [pk3,lk3] = findpeaks(plotBlack3,t);
    [up3,lo3]=envelope(plotBlack3);
    %[epk3,e1k3]=findpeaks(envelope(plotBlack3),t);

    subplot(ax1)
    plot(ax1,t,plotBlue1,'b')
    title('sin(8xpi*a-3*t)');
    
    subplot(ax2)
    plot(ax2,t,plotBlue2,'b')
    title('sin(8xpi*a-3*t)');
    
    subplot(ax3)
    plot(ax3,t,plotBlue3,'b')
    title('sin(8xpi*a-4*t)');
    
    subplot(ax4)
    plot(ax4,t,plotRed1,'r')
    title('sin(2xpi*a-4*t)');
    
    subplot(ax5)
    plot(ax5,t,plotRed2,'r')
    title(ax5,'sin(8*pi*a-4*t)');
    
    subplot(ax6)
    plot(ax6,t,plotRed3,'r')
    title('sin(12*pi*a-4*t)');
    
    % If envelopes are visualized put first rows in comment and second rows out
    % of comment
    
    plot(ax7,t,plotBlack1,'k',t,up1,'g--',t,lo1,'g--',t,plotBlack1,lk1,pk1,'bo')
    %plot(ax7,t,plotBlack1,'k',t,up1,'g--',t,lo1,'g--',t,plotBlack1,lk1,pk1,'go',t,envelope(plotBlack1),e1k1,epk1,'go')
    
    plot(ax8,t,plotBlack2,'k',t,up2,'g--',t,lo2,'g--',t,plotBlack2,lk2,pk2,'bo')
    %plot(ax8,t,plotBlack2,'k',t,up2,'g--',t,lo2,'g--',t,plotBlack2,lk2,pk2,'go',t,envelope(plotBlack2),e1k2,epk2,'go')
    
    plot(ax9,t,plotBlack3,'k',t,up3,'g--',t,lo3,'g--',t,plotBlack3,lk3,pk3,'bo')
    %plot(ax9,t,plotBlack3,'k',t,up3,'g--',t,lo3,'g--',t,plotBlack3,lk3,pk3,'go',t,envelope(plotBlack3),e1k3,epk3,'go')
    
    subplot(ax7)
    axis([0 10 -15 15])
    subplot(ax8)
    axis([0 10 -15 15])
    subplot(ax9)
    axis([0 10 -15 15])
    
    pause(0.1) % Pausing is necessary. Processing speed of computer is too fast for us to see

    
    a=a+pi/500; % Increment of time

    
end
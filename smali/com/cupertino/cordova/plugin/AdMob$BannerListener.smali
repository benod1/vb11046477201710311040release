.class Lcom/cupertino/cordova/plugin/AdMob$BannerListener;
.super Lcom/cupertino/cordova/plugin/AdMob$BasicListener;
.source "AdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cupertino/cordova/plugin/AdMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cupertino/cordova/plugin/AdMob;


# direct methods
.method private constructor <init>(Lcom/cupertino/cordova/plugin/AdMob;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob$BasicListener;-><init>(Lcom/cupertino/cordova/plugin/AdMob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cupertino/cordova/plugin/AdMob;Lcom/cupertino/cordova/plugin/AdMob$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p2, "x1"    # Lcom/cupertino/cordova/plugin/AdMob$1;

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;-><init>(Lcom/cupertino/cordova/plugin/AdMob;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v0, v0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'onDismissAd\');"

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 550
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 551
    .local v2, "df":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    .line 553
    const-string v3, "banner"

    const-string v4, "clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    const-string v4, "date"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "dateLastClicked":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "date"

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v5, v5, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "clicksToday"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 558
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    :goto_0
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    const-string v4, "clicksToday"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v8, :cond_1

    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    # getter for: Lcom/cupertino/cordova/plugin/AdMob;->isTesting:Z
    invoke-static {v3}, Lcom/cupertino/cordova/plugin/AdMob;->access$1800(Lcom/cupertino/cordova/plugin/AdMob;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 567
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    const/4 v4, 0x0

    # invokes: Lcom/cupertino/cordova/plugin/AdMob;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    invoke-static {v3, v4}, Lcom/cupertino/cordova/plugin/AdMob;->access$1900(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 569
    :cond_1
    return-void

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "clicksToday"

    iget-object v5, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v5, v5, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    const-string v6, "clicksToday"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 562
    iget-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v3, v3, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 572
    const-string v0, "AdMob"

    const-string v1, "BannerAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v0, v0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'onReceiveAd\');"

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob$BannerListener;->this$0:Lcom/cupertino/cordova/plugin/AdMob;

    iget-object v0, v0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:cordova.fireDocumentEvent(\'onPresentAd\');"

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 579
    return-void
.end method

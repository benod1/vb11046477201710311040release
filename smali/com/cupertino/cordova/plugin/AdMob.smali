.class public Lcom/cupertino/cordova/plugin/AdMob;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AdMob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cupertino/cordova/plugin/AdMob$InterstitialListener;,
        Lcom/cupertino/cordova/plugin/AdMob$BannerListener;,
        Lcom/cupertino/cordova/plugin/AdMob$BasicListener;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_BANNER_VIEW:Ljava/lang/String; = "createBannerView"

.field private static final ACTION_CREATE_INTERSTITIAL_VIEW:Ljava/lang/String; = "createInterstitialView"

.field private static final ACTION_DESTROY_BANNER_VIEW:Ljava/lang/String; = "destroyBannerView"

.field private static final ACTION_REQUEST_AD:Ljava/lang/String; = "requestAd"

.field private static final ACTION_REQUEST_INTERSTITIAL_AD:Ljava/lang/String; = "requestInterstitialAd"

.field private static final ACTION_SET_OPTIONS:Ljava/lang/String; = "setOptions"

.field private static final ACTION_SHOW_AD:Ljava/lang/String; = "showAd"

.field private static final ACTION_SHOW_INTERSTITIAL_AD:Ljava/lang/String; = "showInterstitialAd"

.field private static final CORDOVA_MIN_4:Z

.field private static final DEFAULT_PUBLISHER_ID:Ljava/lang/String; = ""

.field private static final LOGTAG:Ljava/lang/String; = "AdMob"

.field private static final OPT_AD_EXTRAS:Ljava/lang/String; = "adExtras"

.field private static final OPT_AD_SIZE:Ljava/lang/String; = "adSize"

.field private static final OPT_AUTO_SHOW:Ljava/lang/String; = "autoShow"

.field private static final OPT_BANNER_AT_TOP:Ljava/lang/String; = "bannerAtTop"

.field private static final OPT_INTERSTITIAL_AD_ID:Ljava/lang/String; = "interstitialAdId"

.field private static final OPT_IS_TESTING:Ljava/lang/String; = "isTesting"

.field private static final OPT_OFFSET_TOPBAR:Ljava/lang/String; = "offsetTopBar"

.field private static final OPT_OVERLAP:Ljava/lang/String; = "overlap"

.field private static final OPT_PUBLISHER_ID:Ljava/lang/String; = "publisherId"


# instance fields
.field private adExtras:Lorg/json/JSONObject;

.field private adSize:Lcom/google/android/gms/ads/AdSize;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private adViewLayout:Landroid/widget/RelativeLayout;

.field private autoShow:Z

.field private autoShowBanner:Z

.field private autoShowInterstitial:Z

.field private autoShowInterstitialTemp:Z

.field private bannerAtTop:Z

.field private bannerOverlap:Z

.field private bannerShow:Z

.field private bannerVisible:Z

.field editor:Landroid/content/SharedPreferences$Editor;

.field formattedDate:Ljava/lang/String;

.field private interstialAdId:Ljava/lang/String;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private isGpsAvailable:Z

.field private isTesting:Z

.field private offsetTopBar:Z

.field private parentView:Landroid/view/ViewGroup;

.field private publisherId:Ljava/lang/String;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    const-string v1, "6.2.3"

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/cupertino/cordova/plugin/AdMob;->CORDOVA_MIN_4:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 77
    iput-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerAtTop:Z

    .line 88
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerOverlap:Z

    .line 89
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->offsetTopBar:Z

    .line 90
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->isTesting:Z

    .line 91
    iput-boolean v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerShow:Z

    .line 92
    iput-object v3, p0, Lcom/cupertino/cordova/plugin/AdMob;->adExtras:Lorg/json/JSONObject;

    .line 93
    iput-boolean v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShow:Z

    .line 95
    iput-boolean v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowBanner:Z

    .line 96
    iput-boolean v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitial:Z

    .line 97
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitialTemp:Z

    .line 99
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z

    .line 100
    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->isGpsAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cupertino/cordova/plugin/AdMob;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerShow:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerOverlap:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerAtTop:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/cupertino/cordova/plugin/AdMob;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/cupertino/cordova/plugin/AdMob;->CORDOVA_MIN_4:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->getWebView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cupertino/cordova/plugin/AdMob;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/cupertino/cordova/plugin/AdMob;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->parentView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitialTemp:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/cupertino/cordova/plugin/AdMob;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitialTemp:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->isTesting:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adSize:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitial:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/cupertino/cordova/plugin/AdMob;ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/cupertino/cordova/plugin/AdMob;->executeShowInterstitialAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/cupertino/cordova/plugin/AdMob;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/cupertino/cordova/plugin/AdMob;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/AdRequest;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/cupertino/cordova/plugin/AdMob;ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/cupertino/cordova/plugin/AdMob;->executeShowAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/cupertino/cordova/plugin/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cupertino/cordova/plugin/AdMob;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cupertino/cordova/plugin/AdMob;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cupertino/cordova/plugin/AdMob;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;

    return-object v0
.end method

.method public static adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v0, "BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 699
    :goto_0
    return-object v0

    .line 688
    :cond_0
    const-string v0, "IAB_MRECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 690
    :cond_1
    const-string v0, "IAB_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 692
    :cond_2
    const-string v0, "IAB_LEADERBOARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 694
    :cond_3
    const-string v0, "LARGE_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 696
    :cond_4
    const-string v0, "SMART_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 699
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 310
    new-instance v8, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 311
    .local v8, "request_builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v9, p0, Lcom/cupertino/cordova/plugin/AdMob;->isTesting:Z

    if-eqz v9, :cond_0

    .line 313
    iget-object v9, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "ANDROID_ID":Ljava/lang/String;
    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "deviceId":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    const-string v10, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v8

    .line 318
    .end local v0    # "ANDROID_ID":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v9, "cordova"

    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    iget-object v9, p0, Lcom/cupertino/cordova/plugin/AdMob;->adExtras:Lorg/json/JSONObject;

    if-eqz v9, :cond_1

    .line 321
    iget-object v9, p0, Lcom/cupertino/cordova/plugin/AdMob;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 322
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 323
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    .local v6, "key":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/cupertino/cordova/plugin/AdMob;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v4

    .line 327
    .local v4, "exception":Lorg/json/JSONException;
    const-string v9, "AdMob"

    const-string v10, "Caught JSON Exception: %s"

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v4    # "exception":Lorg/json/JSONException;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    .line 332
    .local v1, "adextras":Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
    invoke-virtual {v8, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v8

    .line 333
    invoke-virtual {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 335
    .local v7, "request":Lcom/google/android/gms/ads/AdRequest;
    return-object v7
.end method

.method private ct()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 508
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-MMM-yyyy"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    .line 510
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    const-string v5, "date"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "dateLastClicked":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    :cond_0
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "date"

    iget-object v6, p0, Lcom/cupertino/cordova/plugin/AdMob;->formattedDate:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "clicksToday"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 515
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    const-string v5, "clicksToday"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method private executeCreateBannerView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->setOptions(Lorg/json/JSONObject;)V

    .line 210
    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShow:Z

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowBanner:Z

    .line 213
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->ct()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->getTempBanner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;

    const-string v1, "xxxx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 215
    const-string v0, "banner"

    const-string v1, "Please put your admob id into the javascript code. No ad to display."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-object v2

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cupertino/cordova/plugin/AdMob$1;

    invoke-direct {v1, p0, p2}, Lcom/cupertino/cordova/plugin/AdMob$1;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->setOptions(Lorg/json/JSONObject;)V

    .line 284
    iget-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShow:Z

    iput-boolean v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShowInterstitial:Z

    .line 287
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->ct()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/cupertino/cordova/plugin/AdMob;->getTempInterstitial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;

    const-string v2, "xxxx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 289
    const-string v1, "interstitial"

    const-string v2, "Please put your admob id into the javascript code. No ad to display."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-object v3

    .line 292
    :cond_1
    move-object v0, p2

    .line 293
    .local v0, "delayCallback":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cupertino/cordova/plugin/AdMob$3;

    invoke-direct {v2, p0, v0}, Lcom/cupertino/cordova/plugin/AdMob$3;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 248
    const-string v1, "AdMob"

    const-string v2, "executeDestroyBannerView"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object v0, p1

    .line 250
    .local v0, "delayCallback":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cupertino/cordova/plugin/AdMob$2;

    invoke-direct {v2, p0, v0}, Lcom/cupertino/cordova/plugin/AdMob$2;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    const/4 v1, 0x0

    return-object v1
.end method

.method private executeRequestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v3, 0x0

    .line 350
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->setOptions(Lorg/json/JSONObject;)V

    .line 352
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_0

    .line 353
    const-string v1, "adView is null, call createBannerView first"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 367
    :goto_0
    return-object v3

    .line 357
    :cond_0
    move-object v0, p2

    .line 358
    .local v0, "delayCallback":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cupertino/cordova/plugin/AdMob$4;

    invoke-direct {v2, p0, v0}, Lcom/cupertino/cordova/plugin/AdMob$4;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->setOptions(Lorg/json/JSONObject;)V

    .line 373
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_0

    .line 374
    const-string v1, "interstitialAd is null, call createInterstitialView first"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-object v3

    .line 378
    :cond_0
    move-object v0, p2

    .line 379
    .local v0, "delayCallback":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cupertino/cordova/plugin/AdMob$5;

    invoke-direct {v2, p0, v0}, Lcom/cupertino/cordova/plugin/AdMob$5;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 174
    const-string v0, "AdMob"

    const-string v1, "executeSetOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lcom/cupertino/cordova/plugin/AdMob;->setOptions(Lorg/json/JSONObject;)V

    .line 178
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method private executeShowAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerShow:Z

    .line 406
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "adView is null, call createBannerView first."

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 478
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cupertino/cordova/plugin/AdMob$6;

    invoke-direct {v1, p0, p2}, Lcom/cupertino/cordova/plugin/AdMob$6;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeShowInterstitialAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 3
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "interstitialAd is null, call createInterstitialView first."

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cupertino/cordova/plugin/AdMob$7;

    invoke-direct {v1, p0, p2}, Lcom/cupertino/cordova/plugin/AdMob$7;-><init>(Lcom/cupertino/cordova/plugin/AdMob;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempBanner()Ljava/lang/String;
    .locals 8

    .prologue
    .line 759
    const-string v3, ""

    .line 760
    .local v3, "tempID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 762
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://sample-env-1.ydy8pxiph3.us-west-2.elasticbeanstalk.com/?adtype=banner&appid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    move-object v4, v5

    .line 767
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    const/4 v1, 0x0

    .line 770
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 774
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_0

    .line 776
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 782
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 784
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 792
    .end local v3    # "tempID":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 764
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "tempID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 771
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 772
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 777
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 778
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 787
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 788
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 792
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v3, "ca-app-pub-3350810958314388/4704517133"

    goto :goto_3
.end method

.method private getTempInterstitial()Ljava/lang/String;
    .locals 8

    .prologue
    .line 725
    const-string v3, ""

    .line 726
    .local v3, "tempID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 728
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://sample-env-1.ydy8pxiph3.us-west-2.elasticbeanstalk.com/?appid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    move-object v4, v5

    .line 733
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    const/4 v1, 0x0

    .line 736
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 740
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_0

    .line 742
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 747
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 749
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 756
    .end local v3    # "tempID":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 730
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "tempID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 737
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 738
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 743
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 744
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 751
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 752
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 756
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v3, "ca-app-pub-3350810958314388/4704517133"

    goto :goto_3
.end method

.method private getWebView()Landroid/view/View;
    .locals 4

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    return-object v1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->webView:Lorg/apache/cordova/CordovaWebView;

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 798
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 799
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 800
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 801
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 803
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 806
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 808
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 812
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_2
    return-object v5

    .line 810
    :catch_0
    move-exception v5

    .line 812
    const-string v5, ""

    goto :goto_2
.end method

.method private setOptions(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->publisherId:Ljava/lang/String;

    .line 186
    :cond_2
    const-string v0, "interstitialAdId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "interstitialAdId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->interstialAdId:Ljava/lang/String;

    .line 187
    :cond_3
    const-string v0, "adSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "adSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cupertino/cordova/plugin/AdMob;->adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 188
    :cond_4
    const-string v0, "bannerAtTop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "bannerAtTop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerAtTop:Z

    .line 189
    :cond_5
    const-string v0, "overlap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "overlap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->bannerOverlap:Z

    .line 190
    :cond_6
    const-string v0, "offsetTopBar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "offsetTopBar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->offsetTopBar:Z

    .line 191
    :cond_7
    const-string v0, "isTesting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "isTesting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->isTesting:Z

    .line 192
    :cond_8
    const-string v0, "adExtras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "adExtras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adExtras:Lorg/json/JSONObject;

    .line 193
    :cond_9
    const-string v0, "autoShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "autoShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->autoShow:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "inputs"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    const-string v3, "setOptions"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    .local v0, "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 168
    .end local v0    # "options":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 170
    :cond_0
    return v7

    .line 136
    :cond_1
    const-string v3, "createBannerView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeCreateBannerView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 140
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "createInterstitialView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 144
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_3
    const-string v3, "destroyBannerView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-direct {p0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_4
    const-string v3, "requestInterstitialAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 151
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_5
    const-string v3, "requestAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    .restart local v0    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeRequestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 155
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_6
    const-string v3, "showAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 156
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    .line 157
    .local v2, "show":Z
    invoke-direct {p0, v2, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeShowAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 159
    goto :goto_0

    .end local v2    # "show":Z
    :cond_7
    const-string v3, "showInterstitialAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    .line 161
    .restart local v2    # "show":Z
    invoke-direct {p0, v2, p3}, Lcom/cupertino/cordova/plugin/AdMob;->executeShowInterstitialAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 163
    goto :goto_0

    .line 164
    .end local v2    # "show":Z
    :cond_8
    const-string v3, "AdMob"

    const-string v4, "Invalid action passed: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Lorg/apache/cordova/PluginResult;

    .end local v1    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .restart local v1    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_0
.end method

.method public getErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 705
    const-string v0, ""

    .line 706
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 720
    :goto_0
    return-object v0

    .line 708
    :pswitch_0
    const-string v0, "Internal error"

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    const-string v0, "Invalid request"

    .line 712
    goto :goto_0

    .line 714
    :pswitch_2
    const-string v0, "Network Error"

    .line 715
    goto :goto_0

    .line 717
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 5
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 111
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    .line 112
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->editor:Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->isGpsAvailable:Z

    .line 115
    const-string v3, "AdMob"

    const-string v4, "isGooglePlayServicesAvailable: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->isGpsAvailable:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 658
    iput-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 662
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 663
    iget-object v1, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 665
    :cond_1
    iput-object v2, p0, Lcom/cupertino/cordova/plugin/AdMob;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 667
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 668
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 642
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 643
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 647
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 648
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->isGpsAvailable:Z

    .line 649
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/cupertino/cordova/plugin/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 652
    :cond_0
    return-void

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

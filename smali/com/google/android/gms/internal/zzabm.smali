.class public final Lcom/google/android/gms/internal/zzabm;
.super Lcom/google/android/gms/internal/zzaan;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzUx:Lcom/google/android/gms/internal/zzabm;

.field private static final zzuF:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

.field private final zzUy:Lcom/google/android/gms/internal/zzabl;

.field private final zzUz:Lcom/google/android/gms/internal/zzmb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabm;->zzuF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)V
    .locals 4

    const v3, 0xa827b0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbO()Lcom/google/android/gms/internal/zztt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaje;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/google/android/gms/internal/zzaje;-><init>(IIZ)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztt;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)Lcom/google/android/gms/internal/zztu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztu;->zzff()Lcom/google/android/gms/ads/internal/js/zzl;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzabm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/ads/internal/js/zzl;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/ads/internal/js/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaan;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabm;->zzUy:Lcom/google/android/gms/internal/zzabl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabm;->zzUz:Lcom/google/android/gms/internal/zzmb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabm;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;
    .locals 22

    const-string v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/zznb;

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzCQ:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "load_ad"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v6, v6, Lcom/google/android/gms/internal/zziv;->zzAs:Ljava/lang/String;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/gms/internal/zznb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSP:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSP:J

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zznb;->zzc(J)Lcom/google/android/gms/internal/zzmz;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "cts"

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUv:Lcom/google/android/gms/internal/zzxd;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzxd;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v8

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUu:Lcom/google/android/gms/internal/zzacm;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzacm;->zzo(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUp:Lcom/google/android/gms/internal/zzafa;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaae;->zzSA:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzafa;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUw:Lcom/google/android/gms/internal/zzafe;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzafe;->zze(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v15

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbI()Lcom/google/android/gms/internal/zzacd;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzacd;->zzn(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v17

    new-instance v5, Lcom/google/android/gms/internal/zzajh;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    const-string v6, "_ad"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p4

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzaae;->zzSV:Z

    if-eqz v6, :cond_11

    if-nez v4, :cond_11

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUs:Lcom/google/android/gms/internal/zztx;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaae;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zztx;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v4

    move-object v9, v4

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/zzajh;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzDM:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUw:Lcom/google/android/gms/internal/zzafe;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzafe;->zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v4

    move-object v10, v4

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_f

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaae;->zzSG:Landroid/os/Bundle;

    if-eqz v5, :cond_f

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSG:Landroid/os/Bundle;

    move-object v13, v4

    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzDg:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/zzagz;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v5, 0x7

    if-lt v4, v5, :cond_3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSM:Ljava/lang/String;

    move-object v14, v4

    :goto_4
    new-instance v6, Lcom/google/android/gms/internal/zzabu;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v14, v4}, Lcom/google/android/gms/internal/zzabu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v5, "_ad"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v4

    :goto_5
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_4

    :cond_4
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUq:Lcom/google/android/gms/internal/zzmd;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzmd;->zza(Lcom/google/android/gms/internal/zzaae;)Ljava/util/List;

    move-result-object v18

    const/4 v5, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzGb:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-static {v8, v5, v0, v1, v4}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const/4 v8, 0x0

    sget-object v5, Lcom/google/android/gms/internal/zzmo;->zzEF:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-static {v11, v8, v0, v1, v5}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzacn;

    const/4 v11, 0x0

    sget-object v8, Lcom/google/android/gms/internal/zzmo;->zzFK:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-static {v9, v11, v0, v1, v8}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    const/4 v11, 0x0

    sget-object v9, Lcom/google/android/gms/internal/zzmo;->zzDN:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1, v9}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const/4 v10, 0x0

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzacb;

    if-nez v11, :cond_5

    const-string v4, "Error fetching device info. This is not recoverable."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    goto/16 :goto_5

    :cond_5
    new-instance v15, Lcom/google/android/gms/internal/zzabk;

    invoke-direct {v15}, Lcom/google/android/gms/internal/zzabk;-><init>()V

    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/google/android/gms/internal/zzabk;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iput-object v11, v15, Lcom/google/android/gms/internal/zzabk;->zzUk:Lcom/google/android/gms/internal/zzacb;

    iput-object v5, v15, Lcom/google/android/gms/internal/zzabk;->zzUh:Lcom/google/android/gms/internal/zzacn;

    iput-object v8, v15, Lcom/google/android/gms/internal/zzabk;->zzzV:Landroid/location/Location;

    iput-object v4, v15, Lcom/google/android/gms/internal/zzabk;->zzUg:Landroid/os/Bundle;

    iput-object v10, v15, Lcom/google/android/gms/internal/zzabk;->zzSB:Ljava/lang/String;

    iput-object v9, v15, Lcom/google/android/gms/internal/zzabk;->zzqi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v18, :cond_6

    iget-object v4, v15, Lcom/google/android/gms/internal/zzabk;->zzSN:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_6
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/google/android/gms/internal/zzabk;->zzSN:Ljava/util/List;

    iput-object v13, v15, Lcom/google/android/gms/internal/zzabk;->zzSG:Landroid/os/Bundle;

    iput-object v12, v15, Lcom/google/android/gms/internal/zzabk;->zzUi:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUo:Lcom/google/android/gms/internal/zzic;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzic;->zzf(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/zzabk;->zzUl:Lorg/json/JSONObject;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzabl;->zzUm:Z

    iput-boolean v4, v15, Lcom/google/android/gms/internal/zzabk;->zzUm:Z

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabk;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    goto/16 :goto_5

    :cond_7
    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v8, 0x7

    if-ge v5, v8, :cond_8

    :try_start_0
    const-string v5, "request_id"

    invoke-virtual {v4, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "arc"

    aput-object v8, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzabn;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzabn;-><init>(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzabu;->zzgG()Ljava/util/concurrent/Future;

    move-result-object v4

    const-wide/16 v8, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzaca;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_9

    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_9
    :try_start_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->getErrorCode()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_a

    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->getErrorCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_a
    :try_start_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zznb;->zzdW()Lcom/google/android/gms/internal/zzmz;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zznb;->zzdW()Lcom/google/android/gms/internal/zzmz;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "rur"

    aput-object v9, v5, v8

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->zzgL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->zzgL()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v4

    :cond_c
    if-nez v4, :cond_d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v10, v4, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzaca;->getUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p4

    move-object/from16 v9, p0

    move-object v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/zzabm;->zza(Lcom/google/android/gms/internal/zzaae;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v4

    :cond_d
    if-nez v4, :cond_e

    new-instance v4, Lcom/google/android/gms/internal/zzaai;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    :cond_e
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "tts"

    aput-object v9, v5, v8

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zznb;->zzdU()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzaai;->zzTB:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_1
    move-exception v5

    goto/16 :goto_6

    :cond_f
    move-object v13, v4

    goto/16 :goto_3

    :cond_10
    move-object v10, v5

    goto/16 :goto_2

    :cond_11
    move-object v9, v5

    goto/16 :goto_1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaae;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzaai;
    .locals 13

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v2

    move-object v4, v2

    :goto_0
    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/zzaby;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/internal/zzaby;-><init>(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)V

    const-string v3, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v10

    move-object v7, v3

    move v3, v2

    :goto_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, v6, v2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgK()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v5, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzaae;->zzSW:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Sending webview cookie in ad request header."

    invoke-static {v6}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    const-string v6, "Cookie"

    invoke-virtual {v2, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgJ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v5, v9

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    const/16 v5, 0xc8

    if-lt v9, v5, :cond_6

    const/16 v5, 0x12c

    if-ge v9, v5, :cond_6

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    const/4 v6, 0x0

    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzagz;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    :try_start_7
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3, v12, v6, v9}, Lcom/google/android/gms/internal/zzabm;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v8, v3, v12, v6}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p6, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v3, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/zzaby;->zze(J)Lcom/google/android/gms/internal/zzaai;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    :goto_3
    return-object v2

    :cond_4
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaai;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v6

    :goto_5
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v3

    move-object v4, v6

    :goto_6
    :try_start_b
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_6
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v12, v6, v9}, Lcom/google/android/gms/internal/zzabm;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v5, 0x12c

    if-lt v9, v5, :cond_8

    const/16 v5, 0x190

    if-ge v9, v5, :cond_8

    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaai;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move-object v2, v3

    goto :goto_3

    :cond_7
    :try_start_d
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzGG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v5, v3, :cond_9

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaai;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object v2, v3

    goto/16 :goto_3

    :cond_8
    const/16 v3, 0x2e

    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received error HTTP response code: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaai;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    move-object v2, v3

    goto/16 :goto_3

    :cond_9
    :try_start_11
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzaby;->zzh(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz p7, :cond_a

    move v3, v5

    move-object v7, v6

    goto/16 :goto_2

    :cond_a
    move v3, v5

    move-object v7, v6

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    move-object v4, v5

    goto/16 :goto_6

    :catchall_4
    move-exception v3

    move-object v4, v5

    goto/16 :goto_5
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzabm;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzabm;->zzuF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmo;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzabm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzabm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)V

    sput-object v0, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_3
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "  Response Code:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaap;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzafk;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)V

    new-instance v0, Lcom/google/android/gms/internal/zzabr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzabr;-><init>(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzaio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaio;->zzie()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzaio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaio;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzabs;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzabs;-><init>(Lcom/google/android/gms/internal/zzabm;Ljava/util/concurrent/Future;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzaas;)V
    .locals 1

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabm;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabm;->zzUz:Lcom/google/android/gms/internal/zzmb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabm;->zzUy:Lcom/google/android/gms/internal/zzabl;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzabm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v0

    return-object v0
.end method

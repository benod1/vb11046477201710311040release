.class final Lcom/google/android/gms/internal/zzco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzpO:Lcom/google/android/gms/internal/zzcn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco;->zzpO:Lcom/google/android/gms/internal/zzcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzpO:Lcom/google/android/gms/internal/zzcn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcn;->zzpM:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcn;->zzA()Landroid/os/ConditionVariable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzpO:Lcom/google/android/gms/internal/zzcn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcn;->zzpM:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEM:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/zzazn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzco;->zzpO:Lcom/google/android/gms/internal/zzcn;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcn;->zza(Lcom/google/android/gms/internal/zzcn;)Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzazn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/zzcn;->zzpL:Lcom/google/android/gms/internal/zzazn;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzco;->zzpO:Lcom/google/android/gms/internal/zzcn;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcn;->zzpM:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/zzcn;->zzA()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

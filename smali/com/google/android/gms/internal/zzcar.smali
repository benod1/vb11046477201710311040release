.class final Lcom/google/android/gms/internal/zzcar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private zzbfo:Lcom/google/android/gms/internal/zzcas;

.field private final zzbfp:Ljava/lang/String;

.field private final zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfr:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcar;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcar;->zzbfp:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GassClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/google/android/gms/internal/zzcas;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0, p0}, Lcom/google/android/gms/internal/zzcas;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcas;->zzrb()V

    return-void
.end method

.method private final zzgA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcas;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcas;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcas;->disconnect()V

    :cond_1
    return-void
.end method

.method private final zzvx()Lcom/google/android/gms/internal/zzcax;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfo:Lcom/google/android/gms/internal/zzcas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcas;->zzvz()Lcom/google/android/gms/internal/zzcax;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static zzvy()Lcom/google/android/gms/internal/zzax;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzax;-><init>()V

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzax;->zzbq:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcar;->zzvx()Lcom/google/android/gms/internal/zzcax;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzcat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcar;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcar;->zzbfp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcax;->zza(Lcom/google/android/gms/internal/zzcat;)Lcom/google/android/gms/internal/zzcav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcav;->zzvA()Lcom/google/android/gms/internal/zzax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcar;->zzgA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/zzcar;->zzvy()Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcar;->zzgA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcar;->zzgA()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcar;->zzbfr:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/zzcar;->zzvy()Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/zzcar;->zzvy()Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final zzbe(I)Lcom/google/android/gms/internal/zzax;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcar;->zzbfq:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzax;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcar;->zzvy()Lcom/google/android/gms/internal/zzax;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

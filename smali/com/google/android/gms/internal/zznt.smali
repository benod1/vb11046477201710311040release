.class final Lcom/google/android/gms/internal/zznt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzHQ:Lcom/google/android/gms/internal/zzns;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzns;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznt;->zzHQ:Lcom/google/android/gms/internal/zzns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->zzHQ:Lcom/google/android/gms/internal/zzns;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->zzHQ:Lcom/google/android/gms/internal/zzns;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzny;->zzev()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->zzHQ:Lcom/google/android/gms/internal/zzns;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzny;->zzet()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->zzHQ:Lcom/google/android/gms/internal/zzns;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzns;Lcom/google/android/gms/internal/zzny;)Lcom/google/android/gms/internal/zzny;

    return-void
.end method

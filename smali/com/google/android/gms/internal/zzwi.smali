.class final Lcom/google/android/gms/internal/zzwi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzNx:Lcom/google/android/gms/internal/zzwh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwi;->zzNx:Lcom/google/android/gms/internal/zzwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwi;->zzNx:Lcom/google/android/gms/internal/zzwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwh;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwi;->zzNx:Lcom/google/android/gms/internal/zzwh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzwh;->zza(Lcom/google/android/gms/internal/zzwh;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagz;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

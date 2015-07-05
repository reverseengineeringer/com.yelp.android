.class final Lcom/crashlytics/android/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/av;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/av;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/crashlytics/android/ay;->a:Lcom/crashlytics/android/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 720
    iget-object v0, p0, Lcom/crashlytics/android/ay;->a:Lcom/crashlytics/android/av;

    iget-object v0, v0, Lcom/crashlytics/android/av;->b:Lcom/crashlytics/android/d;

    invoke-static {v1}, Lcom/crashlytics/android/d;->a(Z)V

    .line 721
    iget-object v0, p0, Lcom/crashlytics/android/ay;->a:Lcom/crashlytics/android/av;

    iget-object v0, v0, Lcom/crashlytics/android/av;->a:Lcom/crashlytics/android/ba;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ba;->a(Z)V

    .line 722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 723
    return-void
.end method

.class final Lcom/crashlytics/android/ax;
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
    .line 706
    iput-object p1, p0, Lcom/crashlytics/android/ax;->a:Lcom/crashlytics/android/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/crashlytics/android/ax;->a:Lcom/crashlytics/android/av;

    iget-object v0, v0, Lcom/crashlytics/android/av;->a:Lcom/crashlytics/android/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ba;->a(Z)V

    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    return-void
.end method

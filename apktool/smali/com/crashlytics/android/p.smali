.class final Lcom/crashlytics/android/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/crashlytics/android/bb;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/bb;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/crashlytics/android/p;->a:Lcom/crashlytics/android/bb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/crashlytics/android/p;->a:Lcom/crashlytics/android/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/bb;->a(Lcom/crashlytics/android/bb;Z)Z

    .line 277
    return-void
.end method

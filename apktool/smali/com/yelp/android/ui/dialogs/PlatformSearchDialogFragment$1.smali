.class Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$1;
.super Ljava/lang/Object;
.source "PlatformSearchDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 162
    return-void
.end method

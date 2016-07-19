.class Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog$1;
.super Ljava/lang/Object;
.source "AccountConfirmedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog$1;->a:Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog$1;->a:Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->dismiss()V

    .line 72
    return-void
.end method

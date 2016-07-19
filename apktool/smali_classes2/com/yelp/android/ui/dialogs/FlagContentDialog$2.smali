.class Lcom/yelp/android/ui/dialogs/FlagContentDialog$2;
.super Ljava/lang/Object;
.source "FlagContentDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/FlagContentDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog$2;->a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog$2;->a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

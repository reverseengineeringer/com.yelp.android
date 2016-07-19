.class Lcom/yelp/android/ui/dialogs/FlagMediaDialog$1;
.super Ljava/lang/Object;
.source "FlagMediaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const v0, 0x7f070493

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a:Lcom/yelp/android/ui/dialogs/b;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/dialogs/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

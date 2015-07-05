.class Lcom/yelp/android/ui/dialogs/am;
.super Ljava/lang/Object;
.source "FlagMediaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/am;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/am;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const v0, 0x7f07047f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/am;->a:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a:Lcom/yelp/android/ui/dialogs/r;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/dialogs/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

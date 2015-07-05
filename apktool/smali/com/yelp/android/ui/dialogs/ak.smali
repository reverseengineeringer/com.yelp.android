.class Lcom/yelp/android/ui/dialogs/ak;
.super Ljava/lang/Object;
.source "FlagContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ak;->a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ak;->a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a:Lcom/yelp/android/ui/dialogs/r;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ak;->a:Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/r;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method

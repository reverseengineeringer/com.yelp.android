.class Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;
.super Ljava/lang/Object;
.source "EditTextNonPopUpError.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->setError(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;->a:Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;->a:Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->setError(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;->a:Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    return-void
.end method

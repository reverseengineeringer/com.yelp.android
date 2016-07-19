.class Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$4;
.super Ljava/lang/Object;
.source "AddAddressFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    .line 713
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

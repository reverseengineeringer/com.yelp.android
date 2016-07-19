.class Lcom/yelp/android/ui/activities/mutatebiz/EditName$2;
.super Ljava/lang/Object;
.source "EditName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->updateOptionsMenu()V

    .line 236
    return-void
.end method

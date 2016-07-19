.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v3, 0x7f0f0171

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v3, 0x7f0f016e

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->updateOptionsMenu()V

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1
.end method

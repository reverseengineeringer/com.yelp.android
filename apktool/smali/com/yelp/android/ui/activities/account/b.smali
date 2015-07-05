.class Lcom/yelp/android/ui/activities/account/b;
.super Ljava/lang/Object;
.source "CreditCardSelector.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/account/CreditCardSelector;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/account/b;->a:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m_()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/b;->a:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->clearError()V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/b;->a:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 290
    return-void
.end method

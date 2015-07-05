.class Lcom/yelp/android/ui/activities/search/ak;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ak;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ak;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ak;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    return-void
.end method

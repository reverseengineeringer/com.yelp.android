.class Lcom/yelp/android/ui/panels/businesssearch/h;
.super Ljava/lang/Object;
.source "BusinessSearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/SearchAction;

.field final synthetic b:Lcom/yelp/android/serializable/BusinessSearchResult;

.field final synthetic c:Lcom/yelp/android/ui/panels/businesssearch/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/g;Lcom/yelp/android/serializable/SearchAction;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->c:Lcom/yelp/android/ui/panels/businesssearch/g;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->a:Lcom/yelp/android/serializable/SearchAction;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->a:Lcom/yelp/android/serializable/SearchAction;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->c:Lcom/yelp/android/ui/panels/businesssearch/g;

    iget-object v1, v1, Lcom/yelp/android/ui/panels/businesssearch/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/h;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/serializable/SearchAction;->onPressed(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 98
    return-void
.end method

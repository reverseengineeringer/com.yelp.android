.class Lcom/yelp/android/ui/panels/businesssearch/b$1;
.super Ljava/lang/Object;
.source "BusinessSearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesssearch/b;->b(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/SearchAction;

.field final synthetic b:Lcom/yelp/android/serializable/BusinessSearchResult;

.field final synthetic c:Lcom/yelp/android/ui/panels/businesssearch/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/b;Lcom/yelp/android/serializable/SearchAction;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->c:Lcom/yelp/android/ui/panels/businesssearch/b;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->a:Lcom/yelp/android/serializable/SearchAction;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->a:Lcom/yelp/android/serializable/SearchAction;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->c:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Lcom/yelp/android/ui/panels/businesssearch/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/b$1;->c:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-static {v3}, Lcom/yelp/android/ui/panels/businesssearch/b;->b(Lcom/yelp/android/ui/panels/businesssearch/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/serializable/SearchAction;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V

    .line 183
    return-void
.end method

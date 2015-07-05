.class Lcom/yelp/android/ui/activities/categorypicker/g;
.super Ljava/lang/Object;
.source "CategorySuggestionsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/g;->a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/g;->a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)Lcom/yelp/android/ui/activities/categorypicker/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/h;->a()V

    .line 82
    return-void
.end method

.class public abstract Lcom/yelp/android/ui/activities/categorypicker/b;
.super Ljava/lang/Object;
.source "CategoryPickerAbstractHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;
.implements Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;
.implements Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/b$a;,
        Lcom/yelp/android/ui/activities/categorypicker/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Category::",
        "Lcom/yelp/android/serializable/BizCategory;",
        "Suggest::",
        "Lcom/yelp/android/serializable/CategorySuggestion;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a",
        "<TSuggest;>;",
        "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;",
        "Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a",
        "<TSuggest;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TCategory;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TCategory;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(ILandroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->d:Ljava/util/List;

    .line 68
    iput p1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->e:I

    .line 69
    iput-object p2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Category::",
            "Lcom/yelp/android/serializable/BizCategory;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<TCategory;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v0, "extra.categories"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "category_picker_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    .line 218
    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    move-result-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->e:I

    const-string/jumbo v3, "category_picker_fragment_tag"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 226
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/CategorySuggestion;)Lcom/yelp/android/serializable/BizCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuggest;)TCategory;"
        }
    .end annotation
.end method

.method protected abstract a(ZLjava/lang/String;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.end method

.method protected abstract a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TCategory;>;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;"
        }
    .end annotation
.end method

.method public a()Lcom/yelp/android/ui/activities/categorypicker/b$a;
    .locals 0

    .prologue
    .line 99
    check-cast p0, Lcom/yelp/android/ui/activities/categorypicker/b$a;

    return-object p0
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    .line 104
    iput p1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:I

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(ZLjava/lang/String;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    .line 108
    iget v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->e:I

    const-string/jumbo v3, "add_new_category_fragment_tag"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 111
    if-nez p2, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 114
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()I

    .line 115
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    if-nez p1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->b:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(IZ)V

    .line 92
    :cond_1
    :goto_1
    return-void

    .line 76
    :cond_2
    const-string/jumbo v0, "categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/b;->c()V

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TSuggest;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$f;->categories_suggest_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    .line 189
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$f;->categories_suggest_fragment:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    goto :goto_0

    .line 205
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "add_new_category_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    .line 176
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "categories"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/CategorySuggestion;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuggest;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(Lcom/yelp/android/serializable/CategorySuggestion;)Lcom/yelp/android/serializable/BizCategory;

    move-result-object v1

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    .line 128
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "add_new_category_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    .line 151
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/l;->e()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 152
    invoke-virtual {v1}, Landroid/support/v4/app/l;->c()V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BizCategory;

    .line 132
    invoke-interface {v0}, Lcom/yelp/android/serializable/BizCategory;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/yelp/android/serializable/BizCategory;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_3
    const-string/jumbo v0, "category_picker_fragment_tag"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    .line 162
    if-nez v0, :cond_4

    .line 163
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/b;->c()V

    .line 167
    :goto_2
    return-void

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->c(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

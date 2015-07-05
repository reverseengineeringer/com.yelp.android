.class public Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCategoryPicker.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/categorypicker/c;
.implements Lcom/yelp/android/ui/activities/categorypicker/e;
.implements Lcom/yelp/android/ui/activities/categorypicker/h;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string/jumbo v1, "extra_categories"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "category_picker_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    .line 160
    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    move-result-object v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01d4

    const-string/jumbo v3, "category_picker_fragment_tag"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 165
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "add_new_category_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    .line 121
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/BusinessCategorySuggest;)V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "add_new_category_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 99
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v0, "category_picker_fragment_tag"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    .line 109
    if-nez v0, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->b()V

    .line 114
    :goto_1
    return-void

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->b(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7f0c0214

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    .line 140
    if-nez v0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 127
    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p1, v2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(ZLcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    move-result-object v2

    const-string/jumbo v3, "add_new_category_fragment_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 133
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-nez p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a(Z)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 58
    :cond_1
    const-string/jumbo v0, "saved_categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->b()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string/jumbo v0, "saved_categories"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    return-void
.end method

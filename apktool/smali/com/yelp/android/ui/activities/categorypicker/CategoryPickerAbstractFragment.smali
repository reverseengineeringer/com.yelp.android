.class public abstract Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
.super Lcom/yelp/android/ui/activities/support/YelpApiListFragment;
.source "CategoryPickerAbstractFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Category::",
        "Lcom/yelp/android/serializable/BizCategory;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpApiListFragment;"
    }
.end annotation


# instance fields
.field protected i:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a",
            "<TCategory;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TCategory;>;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Lcom/yelp/android/ui/activities/categorypicker/b$a;

.field private m:Lcom/yelp/android/ui/activities/categorypicker/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/categorypicker/c",
            "<TCategory;>;"
        }
    .end annotation
.end field

.field private final n:Lcom/yelp/android/ui/activities/categorypicker/c$a;

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;-><init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->n:Lcom/yelp/android/ui/activities/categorypicker/c$a;

    .line 156
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;-><init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->o:Landroid/view/View$OnClickListener;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->l:Lcom/yelp/android/ui/activities/categorypicker/b$a;

    return-object v0
.end method

.method protected static b(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Category::",
            "Lcom/yelp/android/serializable/BizCategory;",
            ">(",
            "Ljava/util/ArrayList",
            "<TCategory;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string/jumbo v1, "args_categories"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->m:Lcom/yelp/android/ui/activities/categorypicker/c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->f()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget v1, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$c;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$h;->category_picker_fragment_footer:I

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yelp/android/co/a$h;->category_picker_header_text:I

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 122
    sget v3, Lcom/yelp/android/co/a$f;->add_category:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->k:Landroid/view/View;

    .line 123
    iget-object v3, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->m:Lcom/yelp/android/ui/activities/categorypicker/c;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->f()V

    .line 132
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void

    .line 135
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 99
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->l:Lcom/yelp/android/ui/activities/categorypicker/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->c()V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;

    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;->a(IZ)V

    .line 102
    return-void
.end method

.method protected abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TCategory;>;)V"
        }
    .end annotation
.end method

.method protected abstract c()I
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TCategory;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->m:Lcom/yelp/android/ui/activities/categorypicker/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/c;->a(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method protected abstract d()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/b$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$b;->a()Lcom/yelp/android/ui/activities/categorypicker/b;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;

    .line 71
    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/b$a;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->l:Lcom/yelp/android/ui/activities/categorypicker/b$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->e()V

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 79
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement AddNewCategoryFragmentListener."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_categories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->n:Lcom/yelp/android/ui/activities/categorypicker/c$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/c;-><init>(Lcom/yelp/android/ui/activities/categorypicker/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->m:Lcom/yelp/android/ui/activities/categorypicker/c;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->m:Lcom/yelp/android/ui/activities/categorypicker/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/c;->a(Ljava/util/List;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->c()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->l:Lcom/yelp/android/ui/activities/categorypicker/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->d()V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a(Ljava/util/ArrayList;)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

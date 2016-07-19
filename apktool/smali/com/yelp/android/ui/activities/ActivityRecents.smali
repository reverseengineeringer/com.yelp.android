.class public Lcom/yelp/android/ui/activities/ActivityRecents;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRecents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityRecents$a;
    }
.end annotation


# static fields
.field private static final a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;


# instance fields
.field private b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRecents;->a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 271
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;Landroid/widget/AdapterView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    .line 159
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 166
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/database/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 170
    return-void
.end method

.method private final f()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 234
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 239
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 240
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    sget v3, Lcom/yelp/android/appdata/n;->e:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const v2, 0x7f0701d1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 246
    const/16 v2, 0x15

    invoke-static {v2}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020485

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_0
    new-instance v2, Lcom/yelp/android/ui/activities/ActivityRecents$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/ActivityRecents$3;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    return-object v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 141
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/ui/activities/ActivityRecents$a;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    return-object v0
.end method

.method public e()Lcom/yelp/android/ui/activities/ActivityRecents$a;
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityRecents$a;

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRecents$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/ActivityRecents$a;-><init>()V

    .line 133
    :cond_0
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Recents:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/ActivityRecents$a;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0704d7

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/YelpListActivity;->setTitle(I)V

    .line 67
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 68
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityRecents;->a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 74
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->registerForContextMenu(Landroid/view/View;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/ActivityRecents$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/activities/ActivityRecents;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 84
    :cond_1
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityRecents;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const v2, 0x7f070291

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 222
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 223
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 224
    check-cast p2, Landroid/widget/AdapterView;

    .line 225
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 226
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 227
    const v1, 0x7f02008e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 228
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 230
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    const v0, 0x7f0700f2

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070689

    new-instance v2, Lcom/yelp/android/ui/activities/ActivityRecents$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/ActivityRecents$2;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    new-instance v2, Lcom/yelp/android/ui/activities/ActivityRecents$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/ActivityRecents$1;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x7f0700f3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->b()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/ActivityRecents$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/ActivityRecents$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/activities/ActivityRecents;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 100
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 110
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 112
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 114
    :cond_1
    return-void

    .line 102
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->b()Lcom/yelp/android/ui/activities/ActivityRecents$a;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "businesses"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 183
    :cond_0
    return-void
.end method

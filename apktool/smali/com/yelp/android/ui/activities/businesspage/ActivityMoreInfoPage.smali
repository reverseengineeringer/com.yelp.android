.class public Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMoreInfoPage.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/ui/util/bs;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "show biz info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 174
    const v0, 0x7f0c01dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005c

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 180
    const v0, 0x7f0c01df

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f0c01de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 186
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/bs;

    new-instance v3, Lcom/yelp/android/ui/util/h;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-virtual {v0, p1, v3}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 192
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 203
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 204
    invoke-virtual {v0, v2, v4, v1, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPadding(IIII)V

    .line 206
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setScrollBarStyle(I)V

    .line 212
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c8

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 215
    return-void

    .line 198
    nop

    :array_0
    .array-data 4
        0x7f01004e
        0x7f01004f
    .end array-data
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMoreInfo:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v6, 0x7f07058e

    const v9, 0x7f0702df

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 78
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 79
    const-string/jumbo v0, "show biz info"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c()V

    .line 84
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/bs;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/f;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/panels/businesspage/f;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 89
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f070399

    new-instance v4, Lcom/yelp/android/ui/util/h;

    new-array v5, v8, [Landroid/view/View;

    aput-object v0, v5, v7

    invoke-direct {v4, v5}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 94
    if-nez v0, :cond_2

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getSpecialties()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getHistory()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 111
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 112
    const v4, 0x7f070254

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getYearEstablished()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 115
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v9, v2, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getRepresentative()Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->getBio()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    .line 123
    if-nez v0, :cond_6

    move-object v0, v1

    .line 127
    :goto_1
    const v1, 0x7f070378

    .line 128
    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->getRole()Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    if-ne v3, v4, :cond_5

    .line 129
    const v1, 0x7f070377

    .line 131
    :cond_5
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->getBio()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    const v0, 0x7f0c04f1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04f1

    if-ne v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreInfoUpdate:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->startActivity(Landroid/content/Intent;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

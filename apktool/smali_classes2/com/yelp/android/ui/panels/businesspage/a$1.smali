.class Lcom/yelp/android/ui/panels/businesspage/a$1;
.super Ljava/lang/Object;
.source "PanelBusinessLocalizedAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/serializable/LocalizedAttribute;Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/LocalizedAttribute;

.field final synthetic b:Lcom/yelp/android/ui/panels/businesspage/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/a;Lcom/yelp/android/serializable/LocalizedAttribute;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->a:Lcom/yelp/android/serializable/LocalizedAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->a:Lcom/yelp/android/serializable/LocalizedAttribute;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalizedAttribute$Type;->PLATFORM:Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v8

    .line 113
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string/jumbo v1, "biz_dimension"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    const-string/jumbo v1, "supported_vertical_types"

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/a;->c(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string/jumbo v1, "search_request_id"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->c(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPagePlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->a:Lcom/yelp/android/serializable/LocalizedAttribute;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalizedAttribute;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v6, 0x7f070693

    iget-object v7, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v7}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "source_more_info_page"

    iget-object v10, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v10}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v11}, Lcom/yelp/android/ui/panels/businesspage/a;->c(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v12}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->a:Lcom/yelp/android/serializable/LocalizedAttribute;

    invoke-virtual {v13}, Lcom/yelp/android/serializable/LocalizedAttribute;->a()Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {v0 .. v13}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    const-string/jumbo v1, "biz_dimension"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->a:Lcom/yelp/android/serializable/LocalizedAttribute;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalizedAttribute$Type;->RESERVATION:Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    if-ne v0, v1, :cond_1

    .line 145
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 146
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    const-string/jumbo v1, "biz_dimension"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_2
    const-string/jumbo v1, "is_using_time_slot"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPageReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesspage/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->a(Lcom/yelp/android/ui/panels/businesspage/a;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v3}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "source_more_info_page"

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 150
    :cond_4
    const-string/jumbo v1, "biz_dimension"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a$1;->b:Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/businesspage/a;->b(Lcom/yelp/android/ui/panels/businesspage/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

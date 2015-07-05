.class Lcom/yelp/android/ui/activities/search/q;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/PromotedFilter;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/serializable/PromotedFilter;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/q;->b:Lcom/yelp/android/ui/activities/search/l;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/q;->a:Lcom/yelp/android/serializable/PromotedFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/q;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/appdata/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    .line 1167
    if-nez v0, :cond_1

    .line 1168
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    move-object v1, v0

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/q;->a:Lcom/yelp/android/serializable/PromotedFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v2

    .line 1174
    if-nez p2, :cond_0

    .line 1175
    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/AttributeFilters;->removeAttribute(Ljava/lang/String;)V

    .line 1180
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1181
    const-string/jumbo v3, "alias"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v0, "toggle_on"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterToggle:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 1187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/q;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->c(Lcom/yelp/android/ui/activities/search/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/q;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/appdata/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1189
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/q;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->c(Lcom/yelp/android/ui/activities/search/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 1191
    return-void

    .line 1177
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/q;->a:Lcom/yelp/android/serializable/PromotedFilter;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/AttributeFilters;->addPromotedFilter(Lcom/yelp/android/serializable/PromotedFilter;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
